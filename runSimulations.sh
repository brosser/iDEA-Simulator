#!/bin/bash

# Bash script to run all toy benchmark simulations
#
# To run this script, do:
#
# $ chmod +x runSimulations.sh
# $ ./runSimulations.sh

# Header
echo -e "\n"
echo -e "\t\t\t 5 Stage Pipeline"
echo -e "Result \t\t\t Benchmark \t\t\t\t Cycles"
echo -e "-----------------------------------------------------------------------"
# Fib
python src/run-simulator.py -q -p 5 ./benchmark/toy/fib/fib-O0.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/fib/fib-O1.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/fib/fib-O2.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/fib/fib-O3.asm

# Fir
python src/run-simulator.py -q -p 5 ./benchmark/toy/fir/fir-O0.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/fir/fir-O1.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/fir/fir-O2.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/fir/fir-O3.asm

# Median
#python src/run-simulator.py -q -p 5 ./benchmark/toy/median/median-O0.asm
#python src/run-simulator.py -q -p 5 ./benchmark/toy/median/median-O1.asm
#python src/run-simulator.py -q -p 5 ./benchmark/toy/median/median-O2.asm
#python src/run-simulator.py -q -p 5 ./benchmark/toy/median/median-O3.asm

# MMult
python src/run-simulator.py -q -p 5 ./benchmark/toy/mmult/mmult-O0.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/mmult/mmult-O1.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/mmult/mmult-O2.asm
python src/run-simulator.py -q -p 5 ./benchmark/toy/mmult/mmult-O3.asm

echo -e "\n"
echo -e "\t\t\t 6 Stage Pipeline"
echo -e "Result \t\t\t Benchmark \t\t\t\t Cycles"
echo -e "-----------------------------------------------------------------------"
# Fib
python src/run-simulator.py -q -p 6 ./benchmark/toy/fib/fib-O0.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/fib/fib-O1.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/fib/fib-O2.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/fib/fib-O3.asm

# Fir
python src/run-simulator.py -q -p 6 ./benchmark/toy/fir/fir-O0.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/fir/fir-O1.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/fir/fir-O2.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/fir/fir-O3.asm

# Median
#python src/run-simulator.py -q -p 6 ./benchmark/toy/median/median-O0.asm
#python src/run-simulator.py -q -p 6 ./benchmark/toy/median/median-O1.asm
#python src/run-simulator.py -q -p 6 ./benchmark/toy/median/median-O2.asm
#python src/run-simulator.py -q -p 6 ./benchmark/toy/median/median-O3.asm

# MMult
python src/run-simulator.py -q -p 6 ./benchmark/toy/mmult/mmult-O0.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/mmult/mmult-O1.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/mmult/mmult-O2.asm
python src/run-simulator.py -q -p 6 ./benchmark/toy/mmult/mmult-O3.asm

echo -e "\n"
echo -e "\t\t\t 7 Stage Pipeline"
echo -e "Result \t\t\t Benchmark \t\t\t\t Cycles"
echo -e "-----------------------------------------------------------------------"
# Fib
python src/run-simulator.py -q -p 7 ./benchmark/toy/fib/fib-O0.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/fib/fib-O1.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/fib/fib-O2.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/fib/fib-O3.asm

# Fir
python src/run-simulator.py -q -p 7 ./benchmark/toy/fir/fir-O0.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/fir/fir-O1.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/fir/fir-O2.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/fir/fir-O3.asm

# Median
#python src/run-simulator.py -q -p 7 ./benchmark/toy/median/median-O0.asm
#python src/run-simulator.py -q -p 7 ./benchmark/toy/median/median-O1.asm
#python src/run-simulator.py -q -p 7 ./benchmark/toy/median/median-O2.asm
#python src/run-simulator.py -q -p 7 ./benchmark/toy/median/median-O3.asm

# MMult
python src/run-simulator.py -q -p 7 ./benchmark/toy/mmult/mmult-O0.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/mmult/mmult-O1.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/mmult/mmult-O2.asm
python src/run-simulator.py -q -p 7 ./benchmark/toy/mmult/mmult-O3.asm

echo -e "\n"
echo -e "\t\t\t 8 Stage Pipeline"
echo -e "Result \t\t\t Benchmark \t\t\t\t Cycles"
echo -e "-----------------------------------------------------------------------"
# Fib
python src/run-simulator.py -q -p 8 ./benchmark/toy/fib/fib-O0.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/fib/fib-O1.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/fib/fib-O2.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/fib/fib-O3.asm

# Fir
python src/run-simulator.py -q -p 8 ./benchmark/toy/fir/fir-O0.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/fir/fir-O1.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/fir/fir-O2.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/fir/fir-O3.asm

# Median
#python src/run-simulator.py -q -p 8 ./benchmark/toy/median/median-O0.asm
#python src/run-simulator.py -q -p 8 ./benchmark/toy/median/median-O1.asm
#python src/run-simulator.py -q -p 8 ./benchmark/toy/median/median-O2.asm
#python src/run-simulator.py -q -p 8 ./benchmark/toy/median/median-O3.asm

# MMult
python src/run-simulator.py -q -p 8 ./benchmark/toy/mmult/mmult-O0.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/mmult/mmult-O1.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/mmult/mmult-O2.asm
python src/run-simulator.py -q -p 8 ./benchmark/toy/mmult/mmult-O3.asm

echo -e "\n"
echo -e "\t\t\t 9 Stage Pipeline"
echo -e "Result \t\t\t Benchmark \t\t\t\t Cycles"
echo -e "-----------------------------------------------------------------------"
# Fib
python src/run-simulator.py -q -p 9 ./benchmark/toy/fib/fib-O0.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/fib/fib-O1.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/fib/fib-O2.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/fib/fib-O3.asm

# Fir
python src/run-simulator.py -q -p 9 ./benchmark/toy/fir/fir-O0.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/fir/fir-O1.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/fir/fir-O2.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/fir/fir-O3.asm

# Median
#python src/run-simulator.py -q -p 9 ./benchmark/toy/median/median-O0.asm
#python src/run-simulator.py -q -p 9 ./benchmark/toy/median/median-O1.asm
#python src/run-simulator.py -q -p 9 ./benchmark/toy/median/median-O2.asm
#python src/run-simulator.py -q -p 9 ./benchmark/toy/median/median-O3.asm

# MMult
python src/run-simulator.py -q -p 9 ./benchmark/toy/mmult/mmult-O0.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/mmult/mmult-O1.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/mmult/mmult-O2.asm
python src/run-simulator.py -q -p 9 ./benchmark/toy/mmult/mmult-O3.asm
echo -e "\n"
