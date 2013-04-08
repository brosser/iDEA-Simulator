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

	parser = OptionParser(usage="usage: run-simulator.py [-v] filename", version="1.0")
	parser.add_option("-v", "--verbose", 
					action="store_true",
					dest="verbose",
					default=False,
					help="Print cycle by cycle debug information to simulation log file")
	parser.add_option("-q", "--quiet", 
					action="store_true",
					dest="quiet",
					default=False,
					help="Supress terminal output")
	(options, args) = parser.parse_args()

	inputFile = None

	# For automated testing output
	B = bcolors("mathstuff")
	
	# Open the input file
	try:
		inputFile = open(args[0], "r");
	except IOError:
		print "There was an error opening the input file: ", args[0]
		sys.exit()

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

	pipelinesim = PipelineSimulator.PipelineSimulator(lines, datamem, mainAddr, oldstdout, options.verbose, options.quiet)
	
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
