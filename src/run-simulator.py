#!/usr/bin/python

import elf32parser
import PipelineSimulator
import Instruction
import InstructionParser
import Sourceline
import Checker

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
	(options, args) = parser.parse_args()

	#if len(args) != 1:
	#	parser.error("Wrong number of arguments")

	#for k, v in options.iteritems():
	#	print "Run with Options"
	#	print k, ": ", v
	#print args

	inputFile = None
	# Open the input file
	try:
		inputFile = open(args[0], "r");
	except IOError:
		print "There was an error opening the input file."
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

	oldstdout.write("> Starting Parser...\n")

	eparser.convertToSimASM(args[0], SimAsmFileName, DataMemFileName)
	lines = eparser.getLines()
	datamem = eparser.getDataMem() 
	mainAddr = eparser.getMainAddr()

	# Parse in lines and check for dependencies
	PPLogFileName = args[3] if len(args) >= 4 else defaultPreProcLogFile
	PPLogFile = open(PPLogFileName, 'w')
	sys.stdout = PPLogFile

	oldstdout.write("> Starting Assembler...\n")

	# Get line by line
	lines = iparser.parseLines(lines)

	pipelinesim = PipelineSimulator.PipelineSimulator(lines, datamem, mainAddr, oldstdout, options.verbose)
	
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

	oldstdout.write("\n> Simulation Completed in ")
	#oldstdout.write("\n> Simulation Time: ")
	oldstdout.write(str(elapsedTime))
	oldstdout.write(" s")

	simulationFile.close()
	PPLogFile.close()

	sys.stdout = oldstdout
	checker = Checker.Checker(simulationFileName)
	checker.runCheck()

if __name__ == "__main__":
    main()
