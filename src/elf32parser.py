# elf32-bigmips to MIPS-Simulator format converter
# Fredrik Brosser 2013-02-15

import sys
import re
from elf32instr import elf32instr
from pprint import pprint
import collections

class elf32parser:

	def __init__(self):	
		self.doSimConv = True
		self.parseDataMem = False
		self.foundMain = False
		self.inputFile = None
		self.instructions = []
		self.dataMemory = dict([(x*4, 0) for x in range(0xffc/4)])
		self.dataMemory.clear()
		self.lines = []

	# Parse instructions from file
	def parseInstructions(self):

		# Read line by line in file, stripping the newline character
		lines = [line.strip() for line in self.inputFile]

		for line in lines:
			
			# Hexadecimal operand/imm?
			ishex = False
			if("0x" in line):
				ishex = True

			# Find assembly instructions (ignoring whitespace lines, C-code and assembler directives)
			# Normal instruction
			if('.rodata:' in line):
				self.parseDataMem = True
			if(self.parseDataMem == False):
				if(self.foundMain == False):
					match = re.match('([0-9a-fA-F]+)' + '\s+' + '<main>:', line)
					if match:
						self.mainAddr = int(match.group(1),16)
						self.foundMain = True
				match = re.match('([0-9a-fA-F]+)' + ':' + '\s+' + '([0-9a-fA-F]+)' + '\s+' + '(\w+)' + '\s+' + '((\w+)(,\s*-?\w+)*)(\([a-zA-Z0-9_]+\))*', line)
				if match:
					operands = [x.strip() for x in match.group(4).split(',')]
					mnemonic = match.group(3)
					# If hex operand, convert to decimal
					if(ishex or mnemonic in ['j', 'jal', 'bne', 'beq', 'bltz', 'bgtz', 'bnez', 'beqz', 'blez', 'bgez']) :
						operands[-1] = str(int(str(operands[-1]), 16))
					self.instructions.append(elf32instr('', match.group(1), match.group(2), match.group(3), len(operands), operands, match.group(7)))
					continue
				# NOPs and instructions without operands
				match = re.match('([0-9a-fA-F]+)' + ':' + '\s+' + '([0-9a-fA-F]+)' + '\s+' + '(\w+)' + '\s?', line)
				if match:
					self.instructions.append(elf32instr('', match.group(1), match.group(2), match.group(3), 0, [], None))	
			# Parse datamemory
			elif(self.parseDataMem == True):
				match = re.match('([0-9a-fA-F]+)' + ':' + '\s+' + '([0-9a-fA-F]+)' + '\s+?' + '(\w+)?' + '\s+?' + '((\w+)(,\s*-?\w+)*)(\([a-zA-Z0-9_]+\))*', line)
				if match:
					self.dataMemory[int(str(match.group(1)),16)] = int(str(match.group(2)),16)
		return

	# Convert from elf32-bigmips to simulator friendly format
	def convertToSimASM(self, inputFileName, SimAsmFilename, DataMemFilename):

		# Open the input file
		try:
		    self.inputFile = open(inputFileName, "r");
		except IOError:
		    print "There was an error opening the input file."
		    sys.exit()

		self.parseInstructions()
		self.inputFile.close()

		for instruction in self.instructions:
			self.lines.append(instruction.getSimData())

		SimAsmFile = open(SimAsmFilename, 'w')
		sys.stdout = SimAsmFile
		
		for line in self.lines:
			print line

		DataMemFile = open(DataMemFilename, 'w')
		sys.stdout = DataMemFile
		
		pprint(self.dataMemory)
		return 

	def getDataMem(self):
		return self.dataMemory

	def getLines(self):
		return self.lines

	def getMainAddr(self):
		return self.mainAddr
