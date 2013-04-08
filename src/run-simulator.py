#!/usr/bin/python

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
	parser.add_option("-q", "--quiet", 
					action="store_true",
					dest="quiet",
					default=False,
					help="supress terminal output")
	parser.add_option("-p",# "--pipeline",
					dest="pipeline",
					default=5,
					help="set number of pipeline stages [default 5]")
	parser.add_option("-f",# "--IFStages",
					dest="ifcycles",
					default=-1,
					help="set number of Fetch (IF) Stage cycles")
	parser.add_option("-d",# "--IDStages",
					dest="idcycles",
					default=-1,
					help="set number of Decode (ID) Stage cycles")
	parser.add_option("-e",# "--EXStages",
					dest="excycles",
					default=-2,
					help="set number of Execution (EX) Stage cycles")
	parser.add_option("-w",# "--WBStages",
					dest="wbcycles",
					default=-1,
					help="set number of Writeback (WB) Stage cycles")

	(options, args) = parser.parse_args()

	# For automated testing output
	B = bcolors("mathstuff")

	pipelineConfigError = False

	# Pipeline checking
	if(options.pipeline < 1):
		pipelineConfigError = True
	if(options.pipeline == 5):
		pipelineConfigError = True

	pipelineSum = int(options.ifcycles) + int(options.idcycles) + int(options.excycles) + int(options.wbcycles)
	if(pipelineSum != int(options.pipeline) or pipelineConfigError):
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

	# Parse in lines and check for dependencies
	PPLogFileName = args[3] if len(args) >= 4 else defaultPreProcLogFile
	PPLogFile = open(PPLogFileName, 'w')
	sys.stdout = PPLogFile

	if(not options.quiet):
		oldstdout.write("> Starting Assembler...\n")

	# Get line by line
	lines = iparser.parseLines(lines)
	pipelineInfo = [int(options.pipeline), int(options.ifcycles), int(options.idcycles), int(options.excycles), int(options.wbcycles)]

	pipelinesim = PipelineSimulator.PipelineSimulator(lines, datamem, mainAddr, oldstdout, options.verbose, options.quiet, pipelineInfo)
	
	if(not options.quiet):
		print "> Starting Simulation..."

	startTime = time.clock()

	# Set logfile
	simulationFileName = args[1] if len(args) >= 2 else defaultSimRunFile
	simulationFile = open(simulationFileName, 'w')
	sys.stdout = simulationFile

	# Run simulation
	pipelinesim.run()

	# Print out line by line
	#print lines

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
	else:
		success = checker.runCheck()
		if(success):
			B.printPass(args[0], checker.getCycles())
		else:
			B.printFail(args[0], "")

if __name__ == "__main__":
    main()
