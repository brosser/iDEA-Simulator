#!/usr/bin/python

import re
import sys

class Checker:

    def __init__(self, simRunFileName):
        # Open the file
        try:
            f = open(simRunFileName, "r");
        except IOError:
            print "Opening of simulation log file failed"
            sys.exit()

        self.lines = f.readlines()

    def runCheck(self):
        lineN = len(self.lines)-1
        for line in reversed(self.lines):
            lineN -= 1
            if re.match( ".*" + "Debug" + ".*" , line): # Caveat: Debug sequence must not change.
                #string = self.lines[max(0,i+5)] # Store the 5th line after Debug.
                string = self.lines[lineN+6] # Store the 5th line after Debug.         
                strp = string.strip()
                s = strp.split(' ')
                if re.match('0', s[2]): # Check if r2 = 0 "$r2 : 0"
                    print "\nSuccess: ", "$r2 = " + s[2]
                    return
                else:
                    print "\nFail: ", "$r2 = " + s[2]
                    return
