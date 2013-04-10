#!/usr/bin/python

import re
import sys
import math

class Checker:

    def __init__(self, simRunFileName, quiet):
        # Open the file
        try:
            f = open(simRunFileName, "r");
        except IOError:
            print "Opening of simulation log file failed"
            sys.exit()

        self.quiet = quiet
        self.lines = f.readlines()

        self.getStats()

        self.cycles = 0
        self.nops = 0
        self.kernelCycles = 0
        self.cpi = 0

    def runCheck(self):
        lineN = len(self.lines)-1
        self.getStats()
        for line in reversed(self.lines):
            lineN -= 1
            if re.match( ".*" + "Debug" + ".*" , line): # Caveat: Debug sequence must not change.
                #string = self.lines[max(0,i+5)] # Store the 5th line after Debug.
                string = self.lines[lineN+6] # Store the 5th line after Debug.         
                strp = string.strip()
                s = strp.split(' ')
                if re.match('0', s[2]): # Check if r2 = 0 "$r2 : 0"
                    if(not self.quiet):
                        print "\nSuccess: ", "$r2 = " + s[2]
                        return
                    else:
                        return True
                else:
                    if(not self.quiet):
                        print "\nFail: ", "$r2 = " + s[2]
                        return
                    else:
                        return False

    def getStats(self):
        lineN = len(self.lines)-1
        for line in reversed(self.lines):
            lineN -= 1
            if re.match( '<Cycles> :' + '.*' , line): # Caveat: Debug sequence must not change.
                strp = line.strip()
                s = strp.split(' ')
                self.cycles = str(s[3])
            if re.match( '<NOPs> :' + '.*' , line): # Caveat: Debug sequence must not change.
                strp = line.strip()
                s = strp.split(' ')
                self.nops = str(s[3])
            if re.match( '<CPI> :' + '.*' , line): # Caveat: Debug sequence must not change.
                strp = line.strip()
                s = strp.split(' ')
                self.cpi = str(s[3])
        return "0"

    def getCycles(self):
        return (str(self.cycles)).replace(' ', '')[:-2].upper()

    def getNOPs(self):
        return (str(self.nops)).replace(' ', '')[:-2].upper()

    def getCPI(self):
        return str(round(float(self.cpi), 4))