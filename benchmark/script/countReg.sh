#!/usr/bin/sh

# Bubble
echo "Bubble"
./countReg.py ../toy/bubble_sort/bubble-O0.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/bubble_sort/bubble-O1.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/bubble_sort/bubble-O2.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/bubble_sort/bubble-O3.asm | grep -A 1 "Used registers" | grep "Total"

# Factorial
echo "Factorial"
./countReg.py ../toy/factorial/factorial-O0.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/factorial/factorial-O1.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/factorial/factorial-O2.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/factorial/factorial-O3.asm | grep -A 1 "Used registers" | grep "Total"

# Fib
echo "Fib"
./countReg.py ../toy/fib/fib-O0.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/fib/fib-O1.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/fib/fib-O2.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/fib/fib-O3.asm | grep -A 1 "Used registers" | grep "Total"

# Fir
echo "Fir"
./countReg.py ../toy/fir/fir-O0.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/fir/fir-O1.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/fir/fir-O2.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/fir/fir-O3.asm | grep -A 1 "Used registers" | grep "Total"

# Median
echo "Median"
./countReg.py ../toy/median/median-O0.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/median/median-O1.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/median/median-O2.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/median/median-O3.asm | grep -A 1 "Used registers" | grep "Total"

# Mmult
echo "Mmult"
./countReg.py ../toy/mmult/mmult-O0.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/mmult/mmult-O1.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/mmult/mmult-O2.asm | grep -A 1 "Used registers" | grep "Total"
./countReg.py ../toy/mmult/mmult-O3.asm | grep -A 1 "Used registers" | grep "Total"

