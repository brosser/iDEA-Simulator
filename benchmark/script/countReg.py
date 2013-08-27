#!/usr/bin/python
### Python reading and matching from assembly source file
### Reports the depth of stack allocated at main, the registers used and unused, and the immediate offsets of sw and lw.
### Fredrik Brosser 2012-11-14
### Modified by HuiYan Cheah 2012-11-15 to suit her whims

## To run: >> ./countReg.py filename.asm > filename.rpt

## Weakness
## 1. Register names in the array matches the headings in the asm file and also the machine code (e.g at and a0).
## 2. In big programs like sha_driver, there may be more than 1 sp assignment.

# Import regular expressions library
# (Overkill to use here, but includes powerful features for more advanced use)
import re
import sys

# File to be read and variables
SPoffset = "No offset found"
SDepth = 0

# Array of register names as str (remember, python is untyped!)
registers = ['zero', 'at', 'v0', 'v1', 'a0', 'a1' , 'a2', 'a3', 
            't0', 't1', 't2', 't3', 't4', 't5', 't6', 't7',
            's0', 's1', 's2', 's3', 's4', 's5', 's6', 's7',
            't8' , 't9',
            'k0', 'k1',
            'gp', 'sp',
            's8', 'ra']
usedRegisters = []
unusedRegisters = []
immOffsets = []

# Open the file
try:
    fname = sys.argv[1]
    file = open(fname, "r");
except IOError:
    print "There was an error opening the file."
    sys.exit()

# Read line by line in file, stripping the newline character
lines = [line.strip() for line in file]

# Pick stack pointer offset from first line that matches
for l in lines:
    # Note: this pattern is overly generic (for whitespace)
    #commented: m = re.match('\s?' + 'addiu' + '\s?' + 'sp'+ '\s?' + ',' + '\s?' + 'sp' + '\s?' + ',' + '\s?' +  '(-{0,1}\d+)', l)
    m = re.match("\s*" + "\d+:" + "\t" + "\w{8}" + "\s\t" + "addiu" + "\t"+ "sp,sp," + "(.*)", l)
    if m:
        # Pick out content of first bracket subgroup
        SPoffset = m.group(1)
        SDepth = int (SPoffset) / 4
        break # matches only once

# Look for usage of registers as specified in the registers array
for l in lines:
    for i in range(len(registers)):    # return number of elements in a list. and spread it out in a range from 0, 0+1.  
        m = re.search(registers[i], l) # search for register names in the lines
        if m:
            usedRegisters.append(registers[i]) # append to the blank array.

# Sort registers and remove duplicate entries
usedRegisters = sorted(set(usedRegisters))

# Check for unused registers
unusedRegisters = [r for r in registers if r not in usedRegisters]

# Sort registers and remove duplicate entries
unusedRegisters = sorted(set(unusedRegisters))

# Look for immediate offsets
for l in lines:
    o = re.match('\s*' + '\d+:' + '\s*' + '\w{8}' + '\s*' + '[s|l]w' + '\s*' + '\w+' + ',' + '(\d+)' + '\(' + '\w+' + '\)', l)
    if o:
        offsetNum = o.group(1)
        immOffsets.append(offsetNum)

immOffsets = sorted(set(immOffsets))


# Print results
print "\n ***** Stack pointer offset *****"
print "Stack Offset: ",
print SPoffset
if SDepth:
    print "Number of words: ",
    print SDepth
print "\n"

print "***** Used registers *****"
print " Total: ",
print len(usedRegisters),
print "|",
for r in usedRegisters:
    print r,
print "\n"

print "**** Unused registers *****"
print " Total: ",
print len(unusedRegisters),
print "|",
for r in unusedRegisters:
    print r,
print "\n"

print "***** Immediate Offsets *****"
print " Total: ",
print len(immOffsets),
print "|",
for r in immOffsets:
    print r,
print ""
