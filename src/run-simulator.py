#!/usr/bin/python
# Use to load input files and options and run the simulation

import elf32parser
import PipelineSimulator
import Instruction
import InstructionParser
import Sourceline
import Checker
from bcolors import bcolors

from optparse import OptionParser

import time
import os
import sys

def main() :

	parser = OptionParser(usage="usage: run-simulator.py [-vqpfdew] filename", version="1.0")
	parser.add_option("-v", "--verbose", 
					action="store_true",
					dest="verbose",
					default=False,
					help="log cycle by cycle debug information")
	parser.add_option("-c", "--core", 
					action="store_true",
					dest="core",
					default=False,
					help="show only core cycles")
	parser.add_option("-q", "--quiet", 
					action="store_true",
					dest="quiet",
					default=False,
					help="less terminal output")
	parser.add_option("-m", "--mute", 
					action="store_true",
					dest="mute",
					default=False,
					help="no summary output")
	parser.add_option("-p",# "--pipeline",
					type="int",
					dest="pipeline",
					default=5,
					help="set number of pipeline stages [default 5]")
	parser.add_option("-f",# "--IFStages",
					type="int",
					dest="ifcycles",
					default=-1,
					help="set number of Fetch (IF) Stage cycles")
	parser.add_option("-d",# "--IDStages",
					type="int",
					dest="idcycles",
					default=-1,
					help="set number of Decode (ID) Stage cycles")
	parser.add_option("-e",# "--EXStages",
					type="int",
					dest="excycles",
					default=-1,
					help="set number of Execution (EX) Stage cycles")
	parser.add_option("-w",# "--WBStages",
					type="int",
					dest="wbcycles",
					default=-1,
					help="set number of Writeback (WB) Stage cycles")
	parser.add_option("-s",# "--WBStages",
					type="int",
					dest="startAddr",
					default=0x0,
					help="set execution start address")

	(options, args) = parser.parse_args()

	# For automated testing output
	B = bcolors()
	options.pipeline = int(options.pipeline)
	options.ifcycles = int(options.ifcycles)
	options.idcycles = int(options.idcycles)
	options.excycles = int(options.excycles)
	options.wbcycles = int(options.wbcycles)

	pipelineConfigError = False

	# Pipeline checking
	if(options.pipeline < 4):
		pipelineConfigError = True

	# Use 1 ID and WB Cycle by default
	if(options.idcycles == -1):
		options.idcycles = 1
	if(options.wbcycles == -1):
		options.wbcycles = 1
	# Use maximum number of EX/MEM Cycles by default (ugly code...)
	if(options.excycles == -1 and options.pipeline >= 5):
		if(options.pipeline == 5):
			options.excycles = 2
		elif(options.pipeline == 6):
			options.excycles = 3
		else:
			options.excycles = 4
	# The rest of the instructions will be WB
	if(options.ifcycles == -1):
		remCycles = options.pipeline-options.idcycles-options.excycles-options.wbcycles
		if(remCycles < 1):
			pipelineConfigError = True
		options.ifcycles = remCycles

	pipelineSum = options.ifcycles + options.idcycles + options.excycles + options.wbcycles
	if(pipelineSum != options.pipeline):
		pipelineConfigError = True

	if(pipelineConfigError):
		B.printError("Error: Incorrect pipeline configuration")
		sys.exit()		

	inputFile = None

	# Open the input file
	try:
		inputFile = open(args[0], "r");
	except IOError:
		B.printError("Error: Could not open input file\t" + args[0])
		sys.exit()

	# Default values
	defaultSimASMFile = "simasm.sim"
	defaultDataMemFile = "datamem.sim"
	defaultPreProcLogFile = "preprocLog.sim"
	defaultSimRunFile = "simrun.sim"

	oldstdout = sys.stdout

	# Initialize parsers
	iparser = InstructionParser.InstructionParser()
	eparser = elf32parser.elf32parser()
	
	# Convert elf32-bigmips to simulator friendly format
	SimAsmFileName = args[2] if len(args) >= 3 else defaultSimASMFile
	SimAsmFile = open(SimAsmFileName, 'w')
	sys.stdout = SimAsmFile

	DataMemFileName = args[4] if len(args) >= 5 else defaultDataMemFile

	if(not options.quiet):
		oldstdout.write("> Starting Parser...\n")

	eparser.convertToSimASM(args[0], SimAsmFileName, DataMemFileName)
	lines = eparser.getLines()
	datamem = eparser.getDataMem() 
	mainAddr = eparser.getMainAddr()
	coreInstr = eparser.getCCoreInstr()

	# Parse in lines and check for dependencies
	PPLogFileName = args[3] if len(args) >= 4 else defaultPreProcLogFile
	PPLogFile = open(PPLogFileName, 'w')
	sys.stdout = PPLogFile

	if(not options.quiet):
		oldstdout.write("> Starting Assembler...\n")

	# Get line by line
	lines = iparser.parseLines(lines, (options.pipeline-options.ifcycles), options.ifcycles, coreInstr)
	pipelineInfo = [options.pipeline, options.ifcycles, options.idcycles, options.excycles, options.wbcycles]

	#pipelinesim = PipelineSimulator.PipelineSimulator(lines, datamem, mainAddr, oldstdout, options.verbose, options.quiet, pipelineInfo)
	pipelinesim = PipelineSimulator.PipelineSimulator(lines, datamem, options.startAddr, oldstdout, options.verbose, options.quiet, pipelineInfo)
	
	if(not options.quiet):
		print "> Starting Simulation..."

	startTime = time.clock()

	# Set logfile
	simulationFileName = args[1] if len(args) >= 2 else defaultSimRunFile
	simulationFile = open(simulationFileName, 'w')
	sys.stdout = simulationFile

	# Run simulation
	pipelinesim.run()

	elapsedTime = (time.clock() - startTime)

	if(not options.quiet):
		oldstdout.write("\n> Simulation Completed in ")
		oldstdout.write(str(elapsedTime))
		oldstdout.write(" s")

	simulationFile.close()
	PPLogFile.close()

	sys.stdout = oldstdout
	checker = Checker.Checker(simulationFileName, options.quiet)
	success = False
	if(not options.quiet):
		checker.runCheck()
	elif(not options.mute):
		success = checker.runCheck()
		if(success):
			if(options.core):
				B.printCoreOnly(checker.getCoreCycles())
			else:
				pNOPs = str(round(float(str(float(checker.getCoreNops())/(float(checker.getCoreCycles()))))*100, 1))
				B.printPass(args[0], [checker.getCycles(), checker.getNOPs(), checker.getCPI(), checker.getCoreCycles(), checker.getCoreNops(), pNOPs])
		else:
			B.printFail(args[0], "")

if __name__ == "__main__":
    main()
