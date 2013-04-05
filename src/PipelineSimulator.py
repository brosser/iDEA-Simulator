from Instruction import *
import collections 
import ast
import sys

class PipelineSimulator(object): 
    alu_operations = {  'add':'+',  'addi':'+',  'sub':'-',  'subi':'-',
                    'addu':'+', 'addiu':'+', 'subu':'-', 'subiu':'-',
                    'and':'&',  'andi':'&',   'or':'|',   'ori':'|',
                    'sll':'<<', 'sllv':'<<', 'srl':'>>', 'srlv':'>>',
                    'sra':'>>', 'srav':'>>',
                    'div':'/',   'mul':'*',  'xor':'^',  'xori':'^'  }
                  
    def __init__(self,instrCollection,dataMem,mainAddr,oldstdout,verbose):
        sys.stdout = oldstdout
        self.oldstdout = oldstdout
        self.instrCount = 0
        self.nopCount = 0
        self.cycles = 0
        self.hazardList = []
        self.__done = False
        self.branched = False
        self.stall = False
        self.changedRegs = []
        self.changedRegsVal = []
        self.accessedMem = []
        self.accessedDataMem = []
        self.branchTaken = False
        self.branchAddr = 0
        self.verbose = verbose

        self.UseBranchDelaySlot = True
        self.dataMemoryWords = 0xfffc
        self.instructionMemoryWords = 0xfffc

        self.memStageFwd = 0
        self.wbStageFwd = 0
        self.memStageDest = None
        self.wbStageDest = None
        self.memStageWBE = 0
        self.wbStageWBE = 0

        self.IDReg1 = None
        self.IDReg2 = None
        self.EXReg1 = None
        self.EXReg2 = None
        
        #self.pipeline is a list<PipelineStage>
        #with the mapping of:
        #   0 = Fetch
        #   1 = Write Back
        #   2 = Read
        #   3 = Execute 
        #   4 = Data Access
        print "> Initializing Pipeline"
        self.pipeline = [None for x in range(0,5)]

        self.pipeline[0] = FetchStage(Nop, self)
        self.pipeline[1] = WriteStage(Nop, self)
        self.pipeline[2] = ReadStage(Nop, self)
        self.pipeline[3] = ExecStage(Nop, self)
        self.pipeline[4] = DataStage(Nop, self)
        
        print "> Initializing Registers"
        # ex: {'$r0' : 0, '$r1' : 0 ... '$r31' : 0 }
        self.registers = dict([("$r%s" % x, 0) for x in range(32)]) 

        # LO special register
        self.lo = 0
        # HI special register
        self.hi = 0

        # Stack Initalization
        print "> Initializing Stack and Main pointers"
        self.registers["$r29"] = 0xfffc

        # programCounter to state where in the instruction collection
        # we are. to find correct spot in instruction memory  
        #self.programCounter = 0x0
        self.programCounter = mainAddr

        # set up the main memory construct, a list index starting at 0
        # and continuing to 0xffc
        # self.mainmemory = dict([(x*4, 0) for x in range(0xffc/4)])

        print "> Initializing Data Memory"
        self.dataMemory = dict([(x, 0) for x in range(self.dataMemoryWords)])
        # Input data memory
        self.dataMemIn = dataMem
        print "> Initializing Instruction Memory"
        self.instructionMemory = dict([(x, 0) for x in range(self.instructionMemoryWords)])

        # the list of instruction objects passed into the simulator,
        # most likely created by parsing text 
        self.instrCollection = instrCollection
       
        # populate main memory with our text of the instructions
        # starting at 0x1000
        y=0
        for instr in self.instrCollection:
           self.instructionMemory[0x0 + y] = instr
           self.accessedMem.append(0x0 + y)
           y += 4

        # populate data memory
        self.readDataMem()

    def readDataMem(self):
        if(len(self.dataMemIn.items()) != 0):
            for key, value in self.dataMemIn.items():
                self.dataMemory[key] = value
    
    def step(self):
        self.cycles +=1
        #shift the instructions to the next logical place
        #technically we do the Fetch instruction here, which is why 
        #FetchStage.advance() does nothing
        
        #MUST KEEP THIS ORDER (writeback before read)
        self.pipeline[1] = WriteStage(self.pipeline[4].instr,self)
        if self.stall:
            self.pipeline[4] = DataStage(Nop,self)
            self.stall = False
        else :
            self.pipeline[4] = DataStage(self.pipeline[3].instr,self)
            self.pipeline[3] = ExecStage(self.pipeline[2].instr,self)
            self.pipeline[2] = ReadStage(self.pipeline[0].instr,self)
            self.pipeline[0] = FetchStage(Nop, self)
         
        #call advance on each instruction in the pipeline
        for pi in self.pipeline:
                pi.advance()
        #self.pipeline[0].advance()
        #self.pipeline[1].advance()
        #self.pipeline[2].advance()
        #self.pipeline[3].advance()
        #self.pipeline[4].advance()

        #now that everything is done, remove the register from
        # the hazard list
        if (self.pipeline[1].instr.regWrite and len(self.hazardList)>0) :
            self.hazardList.pop(0)
        
        self.checkDone()

        #if we stalled our branched we didn't want to load a new
        # so keep the program counter where it is
        if self.stall or self.branched: 
            self.programCounter -= 0x4
            self.branched = False

    def checkDone(self):
        """ Check if we are done and set __done variable """
        self.__done = False
        if self.pipeline[1].instr.op == 'END':
            self.__done = True
        #if self.pipeline[1].instr.op == 'jr' and self.pipeline[1].instr.s1 == "$r31":
        #    self.__done = True
    
    def run(self):
        """ Run the simulator, call step until we are done """
        while not self.__done:
            #self.debug_lite()
            self.step()
            self.printCycles()
            if(self.verbose):
                self.debug_lite()
        #for index, item in sorted(self.instructionMemory.iteritems()):
        #    if item != 0:
        #        print index, ": ", str(item)
        self.debug()
    
    def getForwardVal(self, regName):
        """ Forward the proper value based on the given register name
            If the value is not ready, return "NOVAL" 
        """
        if (self.pipeline[4] is not Nop 
                and self.pipeline[4].instr.result is not None
                and self.pipeline[4].instr.dest == regName) :
                    return self.pipeline[4].instr.result
        elif (self.pipeline[1] is not Nop
            and self.pipeline[1].instr.result is not None
                and self.pipeline[1].instr.dest == regName ):
                    return self.pipeline[1].instr.result
        else :#this value used to be False, but python treats False and 0 the same
            return "NOVAL" 

    def getForwardValBranch(self, regName):
        """ Forward the proper value based on the given register name
            If the value is not ready, return "NOVAL" 
        """
        if (self.pipeline[3] is not Nop 
                and self.pipeline[3].instr.result is not None
                and self.pipeline[3].instr.dest == regName) :
                    return self.pipeline[3].instr.result
        if (self.pipeline[4] is not Nop 
                and self.pipeline[4].instr.result is not None
                and self.pipeline[4].instr.dest == regName) :
                    return self.pipeline[4].instr.result
        elif (self.pipeline[1] is not Nop
            and self.pipeline[1].instr.result is not None
                and self.pipeline[1].instr.dest == regName ):
                    return self.pipeline[1].instr.result
        else :#this value used to be False, but python treats False and 0 the same
            return "NOVAL" 

    # Print current cycle number to terminal
    def printCycles(self):
        self.oldstdout.write("\r{}".format("Cycles: [" + str(self.cycles) + "]"))
        self.oldstdout.flush()

    ### DEBUGGING INFORMATION PRINTING ### 
    def debug_lite(self):
        print "###################### PC = " + str(hex(self.programCounter)) + " ######################"
        print "Cycles: ", str(self.cycles)
        #self.printStageCollection() 
        self.printPipeline()
        self.printRegFile(True)
        #self.printDataMemory()
        print "\n<Hazard List> : " , self.hazardList
        print "<Updated Registers> : ", self.changedRegs, " = ", self.changedRegsVal, "\n"

    def debug(self):
        print "\n######################## Debug ###########################"
        #self.printStageCollection()     
        self.printRegFile(False)
        self.printPipeline()   
        self.printInstructionMemory()
        self.printDataMemory()

        print "\n<Final Program Counter> : ", hex(self.programCounter)
        print "<Cycles> : " , float(self.cycles)
        print "<Instructions Executed> : " , float(self.instrCount)
        print "<NOPs> : " , float(self.nopCount)
        print "<CPI> : " , float(self.cycles) / (float(self.instrCount)-float(self.nopCount)) , "\n"

    def printInstructionMemory(self):
        print "<Accessed Instructions>"
        self.accessedMem = sorted(self.accessedMem)
        for k,v in sorted(self.instructionMemory.iteritems()):
            if k in self.accessedMem:
                print k, ":" , v

    def printDataMemory(self):
        print "\n<Accessed Data>"
        self.accessedDataMem = sorted(self.accessedDataMem)
        for k,v in sorted(self.dataMemory.iteritems()):
            if k in self.accessedDataMem and k is not None and v != 0:
                print hex(int(str(k), 10)), ":" , v
                #print struct.unpack('!i', binascii.unhexlify(x))[0]

                
    def printPipeline(self):
        print "\n<Pipeline>"
        print repr(self.pipeline[0]) 
        print repr(self.pipeline[2]) 
        print repr(self.pipeline[3]) 
        print repr(self.pipeline[4]) 
        print repr(self.pipeline[1]) 

    def printRegFile(self, compact):
        #"""
        print "\n<Register File>"
        regstr = ""
        for k,v in sorted(self.registers.iteritems()):
            if len(k) == 3:
                if(not compact):
                    print k, ":" , v
                regstr +=  str(k) + ":  " + str(v) + "\t"
        if(compact):
            print regstr  
        regstr = ""
        for k,v in sorted(self.registers.iteritems()):
            if len(k) == 4 and k[2] == '1':
                if(not compact):
                    print k, ":" , v
                regstr +=  str(k) + ": " + str(v) + "\t"
        if(compact):
            print regstr  
        regstr = ""
        for k,v in sorted(self.registers.iteritems()):
            if len(k) == 4 and k[2] == '2':
                if(not compact):
                    print k, ":" , v
                regstr +=  str(k) + ": " + str(v) + "\t"
        if(compact):
            print regstr  
        regstr = ""
        for k,v in sorted(self.registers.iteritems()):
            if len(k) == 4 and k[2] == '3': 
                if(not compact):
                    print k, ":" , v
                regstr +=  str(k) + ": " + str(v) + "\t"
        #print "hi: ", self.hi
        regstr +=  "hi: " + str(self.hi) + "\t"
        #print "lo: ", self.lo
        regstr +=  "lo: " + str(self.lo) 
        if(compact):
            print regstr
                
    def printStageCollection(self):
        print "\n<Instruction Collection>"
        for index, item in sorted(self.instructionMemory.iteritems()):
            if item != 0:
                print index, ": ", str(item)

class PipelineStage(object):
    def __init__(self, instruction, simulator):
        self.instr = instruction
        self.simulator = simulator
        
    def advance(self):
        pass
    
    def __repr__(self):
        return str(self) + ':\t' + str(self.instr)
    
class FetchStage(PipelineStage):
    def advance(self):
        """ 
        Fetch the next instruction according to simulator program counter
        """
        if self.simulator.programCounter < (len(self.simulator.instrCollection) * 4 + 0x0):
            self.instr = self.simulator.instructionMemory[self.simulator.programCounter]
            if(self.instr and self.instr.op != "nop" and self.instr.op != None):
                self.simulator.instrCount += 1
            if(self.instr.op is 'nop'):
                self.simulator.instrCount += 1
                self.simulator.nopCount += 1
        else:
            self.instr = Nop
        self.simulator.programCounter += 4
         
    def __str__(self):
        return 'Fetch Stage\t'
    
class ReadStage(PipelineStage):
    def advance(self):
        """
        Read the necessary registers from the registers file
        used in this instruction 
        """

        if(self.instr.regRead):
            self.instr.source1RegValue = int(self.simulator.registers[self.instr.s1])
            if (self.instr.immed and
                #these instructions require special treatment
                (self.instr.op not in ['lw', 'sw', 'bne', 'beq', 'beqz', 'bnez', 'blez', 
                    'bgtz', 'bltz', 'bgez'])):
                #check to see if it is a hex value
                #if "0x" in self.instr.immed:
                #    self.instr.source2RegValue = int(self.instr.immed,16)
                #else :
                self.instr.source2RegValue = int(self.instr.immed)
            if(self.instr.op in ['srlv', 'sllv', 'srav']):
                #if "0x" in self.instr.s2:
                #    self.instr.source2RegValue = int(self.instr.s2,16)
                #else :
                self.instr.source2RegValue = int(self.instr.s2)

            elif self.instr.s2:
                self.instr.source2RegValue = int(self.simulator.registers[self.instr.s2])

        # Update PC
        if self.instr.op == 'jal':
            # Save return address in $ra = $r31
            self.simulator.registers["$r31"] = self.simulator.programCounter
            self.simulator.changedRegs.append("$r31")
            self.simulator.changedRegsVal.append(hex(self.simulator.programCounter))
            targetval = int(self.instr.target)
            self.simulator.programCounter = targetval
            # Set the o  instructions currently in the pipeline to a Nop
            # Branch Delay Slot or Stall
            if(self.simulator.UseBranchDelaySlot == False):
                self.simulator.pipeline[0] = FetchStage(Nop, self)      

        if self.instr.op == 'j':
            targetval = int(self.instr.target)
            self.simulator.programCounter = targetval
            # Set the o  instructions currently in the pipeline to a Nop
            # Branch Delay Slot or Stall
            if(self.simulator.UseBranchDelaySlot == False):
                self.simulator.pipeline[0] = FetchStage(Nop, self)
       
        if self.instr.op == 'jr':
            self.simulator.programCounter = self.instr.source1RegValue
            # Branch Delay Slot or Stall
            if(self.simulator.UseBranchDelaySlot == False):
                self.simulator.pipeline[0] = FetchStage(Nop, self)
            #if(self.simulator.UseBranchDelaySlot == True):
                #self.simulator.pipeline[2] = ReadStage(Nop, self)

        elif self.instr.op == 'jalr':
            # Save return address in $ra = $r31
            self.simulator.registers["$r31"] = self.simulator.programCounter
            self.simulator.changedRegs.append("$r31")
            self.simulator.changedRegsVal.append(hex(self.simulator.programCounter))
            self.simulator.programCounter = self.instr.source1RegValue
            # Branch Delay slot or  or Stall
            if(self.simulator.UseBranchDelaySlot == False):
                self.simulator.pipeline[0] = FetchStage(Nop, self)
            #if(self.simulator.UseBranchDelaySlot == True):
                #self.simulator.pipeline[2] = ReadStage(Nop, self) 

        # Conditional Branch
        """
        elif(self.instr.op in ['bne', 'beq', 'blez', 'bgtz', 'bltz', 'bgez', 'bnez', 'beqz']): 
            
            self.instr.source1RegValue = self.simulator.registers[self.instr.s1]
            if self.instr.op in ['bne', 'beq']:
                self.instr.source2RegValue = self.simulator.registers[self.instr.s2]
            
            if self.instr.s1 in self.simulator.hazardList and self.instr.s1 is not '$r0':
                forwardVal = self.simulator.getForwardVal(self.instr.s1)
                if forwardVal != "NOVAL":
                    self.instr.source1RegValue = forwardVal
                    print "Forwarding register to Branch", self.instr.s1, " = ", forwardVal
            if self.instr.s2 in self.simulator.hazardList and self.instr.s2 is not '$r0':
                forwardVal = self.simulator.getForwardVal(self.instr.s2)
                if forwardVal != "NOVAL" :
                    self.instr.source2RegValue = forwardVal
                    print "Forwarding register to Branch", self.instr.s2, " = ", forwardVal

            if self.instr.s1 == self.simulator.pipeline[3].instr.dest and (self.simulator.pipeline[3].instr.result is not None):
                self.instr.source1RegValue = self.simulator.pipeline[3].instr.result
                print "FORWARDING TO BRANCH FROM EX", self.instr.s1, "=", self.instr.source1RegValue
            if self.instr.s2 == self.simulator.pipeline[3].instr.dest and (self.simulator.pipeline[3].instr.result is not None):
                self.instr.source2RegValue = self.simulator.pipeline[3].instr.result
                print "FORWARDING TO BRANCH FROM EX", self.instr.s2, "=", self.instr.source2RegValue
        """
        
    def __str__(self):
        return 'Read from Register'
    
class ExecStage(PipelineStage):
    def advance(self):
        """
        Execute the instruction according to its mapping of 
        assembly operation to Python operation
        """

        if self.instr is not Nop and self.instr.aluop:
            #if we have a hazard in either s1 or s2, 
            # grab the value from the other instructions
            # in the pipeline
            if self.instr.s1 in self.simulator.hazardList and self.instr.s1 is not '$r0':
                forwardVal = self.simulator.getForwardVal(self.instr.s1)
                if forwardVal != "NOVAL":
                    self.instr.source1RegValue = forwardVal
                    if(self.simulator.verbose):
                        print "Forwarding register", self.instr.s1, " = ", forwardVal
                else :
                    self.simulator.stall = True
                    return

            if self.instr.s2 in self.simulator.hazardList and self.instr.s2 is not '$r0':
                forwardVal = self.simulator.getForwardVal(self.instr.s2)
                if forwardVal != "NOVAL" :
                    self.instr.source2RegValue = forwardVal
                    if(self.simulator.verbose):
                        print "Forwarding register", self.instr.s2, " = ", forwardVal
                else :
                    self.simulator.stall = True
                    return
            
            """
            # Update regnumbers
            self.simulator.EXReg1 = self.simulator.IDReg1
            self.simulator.EXReg2 = self.simulator.IDReg2
            self.simulator.IDReg1 = self.instr.s1
            self.simulator.IDReg2 = self.instr.s2

            # Output for Dataforwarding
            
            print "MEM D: ", self.simulator.memStageDest 
            print "EX S1: ", self.simulator.EXReg1
            print "EX S2: ", self.simulator.EXReg2
            print "ID S1: ", self.simulator.IDReg1
            print "ID S2: ", self.simulator.IDReg2
            print "IN S1: ", self.instr.s1
            print "IN S2: ", self.instr.s2
            """
            #if(not self.instr.readMem and not self.instr.writeMem):
            # Data forwarding from Memory Stage
            """
            if(self.simulator.memStageWBE and (self.simulator.memStageDest == self.simulator.EXReg1)
                and self.instr.op is not 'lw'):
                self.instr.source1RegValue = self.simulator.memStageFwd
                print "FORWARDING FROM MEMSTAGE: ", self.simulator.EXReg1
            elif(self.simulator.memStageWBE and (self.simulator.memStageDest == self.simulator.EXReg2)):
                self.instr.source2RegValue = self.simulator.memStageFwd
                print "FORWARDING FROM MEMSTAGE: ", self.simulator.EXReg2

            # Data forwarding from Writeback Stage
            elif(self.simulator.wbStageWBE and (self.simulator.wbStageDest == self.simulator.EXReg1)
                and self.instr.op is not 'lw'):
                self.instr.source1RegValue = self.simulator.wbStageFwd
                print "FORWARDING FROM WB: ", self.simulator.EXReg1
            elif(self.simulator.wbStageWBE and (self.simulator.wbStageDest == self.simulator.EXReg2)):
                self.instr.source2RegValue = self.simulator.wbStageFwd
                print "FORWARDING FROM WB: ", self.simulator.EXReg2
            #elif self.instr.readMem:
            """
            #append the destination register to the hazard list 
            if self.instr.regWrite :
                self.simulator.hazardList.append(self.instr.dest)    

            if self.instr.op == 'END':
                return
            #calculate the offset of the lw and sw instructions
            if  self.instr.op in ['lw', 'lh', 'lb', 'lhu', 'lbu']:
                self.instr.source1RegValue = self.instr.source1RegValue + int(self.instr.immed)
            elif  self.instr.op in ['sw', 'sh', 'sb', 'shu', 'sbu']:
                self.instr.source2RegValue = self.instr.source2RegValue + int(self.instr.immed)
            elif (self.instr.op == 'li'):
                self.instr.result = int(self.instr.immed, 10)
            elif (self.instr.op == 'lui'):
                #if("0x" in str(self.instr.immed)):
                #    self.instr.result = int(self.instr.immed, 16) & 0xFFFF0000
                #else:
                self.instr.result = int(self.instr.immed, 10)  
                #print "LUI RESULTS!", self.instr.result

            elif self.instr.op == 'abs':
                self.simulator.result = abs(self.instr.source1RegValue)
                # Set the other instructions currently in the pipeline to a Nop
                # self.simulator.pipeline[0] = FetchStage(Nop, self)


            elif (self.instr.op == "addi"):
                self.instr.result = int(self.instr.source1RegValue) + int(self.instr.immed)
            elif (self.instr.op == "addu"):
                self.instr.result = int(self.instr.source1RegValue) + int(self.instr.source2RegValue)
            elif (self.instr.op == "mflo"):
                self.instr.result = self.simulator.lo
            elif (self.instr.op == "mfhi"):
                self.instr.result = self.simulator.hi
            elif (self.instr.op in ["mult", "multu"]):
                    a = int(self.instr.source1RegValue)
                    b = int(self.instr.source2RegValue)
                    z = a * b
                    self.simulator.lo = z & 0x0000FFFF
                    self.simulator.hi = z & 0xFFFF0000
            elif (self.instr.op in ["div", "divu"]):
                    a = int(self.instr.source1RegValue)
                    b = int(self.instr.source2RegValue)
                    self.simulator.lo = (a / b) & 0x0000FFFF
                    self.simulator.hi = (a % b) & 0xFFFF0000
            elif self.instr.op == 'bne':
                if int(self.instr.source1RegValue) != int(self.instr.source2RegValue):
                    self.doBranch()
            elif self.instr.op == 'beq':
                if int(self.instr.source1RegValue) == int(self.instr.source2RegValue):
                    self.doBranch()
            elif self.instr.op == 'bgtz':
                if int(self.instr.source1RegValue) > 0:
                    self.doBranch()
            elif self.instr.op == 'bgez':
                if int(self.instr.source1RegValue) >= 0:
                    self.doBranch()
            elif self.instr.op == 'bnez':
                if int(self.instr.source1RegValue) != 0:
                    self.doBranch()
            elif self.instr.op == 'beqz':
                if int(self.instr.source1RegValue) == 0:
                    self.doBranch()
            elif self.instr.op == 'bltz':
                if int(self.instr.source1RegValue) < 0:
                    self.doBranch()
            elif self.instr.op == 'blez':
                if int(self.instr.source1RegValue) <= 0:
                    self.doBranch()
            elif self.instr.op in ['sll']:      
                self.instr.result = int(self.instr.source1RegValue) << int(self.instr.shamt)
            elif self.instr.op in ['srl', 'sra']:
                self.instr.result = int(self.instr.source1RegValue) >> int(self.instr.shamt)
            else :         
                if (self.instr.op in ['slt', 'sltu']):
                    a = int(self.instr.source1RegValue)
                    b = int(self.instr.source2RegValue)
                    self.instr.result = 1 if (a<b) else 0
                elif (self.instr.op in ['slti', 'sltiu']):
                    a = int(self.instr.source1RegValue)
                    b = int(self.instr.immed)
                    self.instr.result = 1 if (a<b) else 0
                elif (self.instr.op == 'nor'):
                    self.instr.result = ~(self.instr.source1RegValue | self.instr.source2RegValue)
                else:
                    #print "INSTRUCTION IS: " + self.instr.op
                    #print 1+int(str(self.instr.source2RegValue))
                    #self.instr.result = eval("%d %s %d" % (self.instr.source1RegValue, 
                    #        self.simulator.alu_operations[self.instr.op], 
                    #        self.instr.source2RegValue))
                    #self.instr.result = eval("%d %s %d" % (int(str(self.instr.source1RegValue)), 
                    #        self.simulator.alu_operations[self.instr.op], 
                    #        int(str(self.instr.source2RegValue))))
                    self.instr.result = eval("%d %s %d" % (int((self.instr.source1RegValue)), 
                            self.simulator.alu_operations[self.instr.op], 
                            int((self.instr.source2RegValue))))

        if(self.instr.result is not None):
            self.instr.result = self.instr.result & 0xFFFFFFFF

    def doBranch(self):
        # Set the program counter to the target address
        #targetval = 0
        #if(self.instr.op in ['bne', 'beq', 'blez', 'bgtz', 'bltz', 'bgez', 'bnez', 'beqz']) :
            #if any(x in ["a","b","c","d","e","f"] for x in str(self.instr.immed)) :
            #    targetval = int(self.instr.immed, 16)
            #else :
        targetval = int(self.instr.immed)
        if(self.simulator.verbose):
            print "Branching to target ", hex(targetval)
            # HEX ?
            #targetval = int(str(self.instr.immed), 16)
        #self.simulator.programCounter = self.simulator.programCounter + (targetval * 4) - 8
        
        # HARLEM SHAKE
        self.simulator.programCounter = targetval + 4

        #self.simulator.branchAddr = targetval + 4
        
        # Set the other instructions currently in the pipeline to Nops
        self.simulator.pipeline[0] = FetchStage(Nop, self)
        if(self.simulator.UseBranchDelaySlot == False):
            self.simulator.pipeline[2] = FetchStage(Nop, self)
        self.simulator.branched = True
           # self.simulator.pipeline[2] = ReadStage(Nop, self)
        #self.simulator.takeBranch = True

    def __str__(self):
        return 'Execute Stage\t'
    
class DataStage(PipelineStage):
    def advance(self):
        """
        If we have to write to main memory, write it first
        and then read from main memory second
        """

        # Data forwarding from memory stage
        self.simulator.memStageWBE = self.instr.regWrite
        self.simulator.memStageFwd = self.instr.result
        self.simulator.memStageDest = self.instr.dest

        if(self.instr.op == "li"):
            self.simulator.dataMemory[self.instr.source1RegValue] = self.instr.immed
            self.simulator.accessedDataMem.append(self.instr.source1RegValue)
            checked = []
            for e in self.simulator.accessedDataMem:
                if e not in checked:
                    checked.append(e)
            self.simulator.accessedDataMem = checked
        
        if self.instr.writeMem:
            writeValue = 0

            addr = self.instr.source2RegValue
            byteoffset = addr%4
            addr -= byteoffset        

            # Write byte
            if(self.instr.op in ["sb", "sbu"]):
                writeValue = (self.instr.source1RegValue & 0x000000FF)

                # Make room for new byte to be written
                mask = (0x00FFFFFF>>byteoffset)
                self.simulator.dataMemory[addr] = self.simulator.dataMemory[addr] & mask
                mask = writeValue<<(3-byteoffset)
                self.simulator.dataMemory[addr] = self.simulator.dataMemory[addr] & mask

            # Write halfowrd
            elif(self.instr.op in ["sh", "shu"]):
                writeValue = (self.instr.source1RegValue & 0x0000FFFF)
                addr = self.instr.source2RegValue

                # Make room for new byte to be written
                mask = (0x0000FFFF>>byteoffset)
                self.simulator.dataMemory[addr] = self.simulator.dataMemory[addr] & mask
                mask = writeValue<<(3-byteoffset)
                self.simulator.dataMemory[addr] = self.simulator.dataMemory[addr] & mask

            # Write word
            else:
                writeValue = self.instr.source1RegValue    

            self.simulator.dataMemory[addr] = writeValue

            self.simulator.accessedDataMem.append(addr)

            checked = []
            for e in self.simulator.accessedDataMem:
                if e not in checked:
                    checked.append(e)
            self.simulator.accessedDataMem = checked

        elif self.instr.readMem:
            #if(self.instr.source1RegValue%4 != 0):
                #self.instr.source1RegValue = (self.instr.source1RegValue/4)*4


            
            addr = self.instr.source1RegValue
            if(addr is None):
                print "No s1: ", self.instr
            byteoffset = addr%4
            addr -= byteoffset   

            # Read Word
            if self.instr.op == 'lw':
                if(addr in self.simulator.dataMemory):
                    self.instr.result = self.simulator.dataMemory[addr] & 0xFFFFFFFF
                else:
                    print "MEMORY ACCESS ERROR", self.instr
                    print "ON ADDRESS ", hex(addr)
                    self.instr.result = self.simulator.dataMemory[addr] & 0xFFFFFFFF

            # Read Half-word
            elif self.instr.op in ['lh', 'lhu']:
                # Read corresponding half-word in word
                byteoffset = addr%4
                addr -= byteoffset
                if(addr in self.simulator.dataMemory):
                    self.instr.result = self.simulator.dataMemory[addr] & (0xFFFF0000>>(byteoffset*2))
                else:
                    print "MEMORY ACCESS ERROR", self.instr
                    self.instr.result = self.simulator.dataMemory[addr] & (0xFFFF0000>>(byteoffset*2))

            # Read single byte
            elif self.instr.op in ['lb', 'lbu']:
                # Read corresponding byte in word
                byteoffset = addr%4
                addr -= byteoffset
                if(addr in self.simulator.dataMemory):
                    self.instr.result = self.simulator.dataMemory[addr] & (0xFF000000>>(byteoffset*2))
                else:
                    print "MEMORY ACCESS ERROR", self.instr
                    self.instr.result = self.simulator.dataMemory[addr] & (0xFF000000>>(byteoffset*2))
            
            #if(addr in self.simulator.dataMemory):
            #    self.instr.result = self.simulator.dataMemory[addr] & 0xFFFFFFFF
            #else:
            #    print "MEMORY ACCESS ERROR", self.instr
            #    self.instr.result = self.simulator.dataMemory[addr] & 0xFFFFFFFF
            #    #sys.exit()
            #    #self.instr.result = self.simulator.dataMemory[addr] & 0xFFFFFFFF

    def __str__(self):
        return 'Main Memory'
    
class WriteStage(PipelineStage):
    def advance(self):
        """
        Write to the register file
        """
        # Data forwarding from wb stage
        self.simulator.wbStageWBE = self.instr.regWrite
        self.simulator.wbStageFwd = self.instr.result
        self.simulator.wbStageDest = self.instr.dest

        self.simulator.changedRegs = []
        self.simulator.changedRegsVal = []
        if self.instr.regWrite:
            if self.instr.dest == '$r0':
                #Edit: don't raise exception just ignore it
                #raise Exception('Cannot assign to register $r0')    
                pass
            if (self.instr.op in ['mult', 'multu', 'div', 'divu']):
                pass
            elif self.instr.dest:
                self.simulator.registers[self.instr.dest] = self.instr.result & 0xFFFFFFFF
                self.simulator.changedRegs.append(self.instr.dest)
                self.simulator.changedRegsVal.append(self.instr.result)
                
    def __str__(self):
        return 'Write to Register'
