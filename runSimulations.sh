#!/bin/bash
# Bash script to run all toy benchmark simulations
# To run this script, do:
# $ chmod +x runSimulations.sh
# $ ./runSimulations.sh

for I in 5 6 7 8 9 
do

	echo -e "\n"
	echo -e "\t\t\t\t [  $I Stage Pipeline  ]"
	echo -e "Result \t\t Benchmark\t\t\tCycles \t\t NOPs \t\t CPI"
	echo -e "---------------------------------------------------------------------------------------"
	# Fib
	python src/run-simulator.py -q -p $I ./benchmark/toy/fib/fib-O0.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/fib/fib-O1.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/fib/fib-O2.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/fib/fib-O3.asm

	# Fir
	python src/run-simulator.py -q -p $I ./benchmark/toy/fir/fir-O0.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/fir/fir-O1.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/fir/fir-O2.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/fir/fir-O3.asm

	# Median
	python src/run-simulator.py -q -p $I ./benchmark/toy/median/median-O0.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/median/median-O1.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/median/median-O2.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/median/median-O3.asm

	# MMult
	python src/run-simulator.py -q -p $I ./benchmark/toy/mmult/mmult-O0.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/mmult/mmult-O1.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/mmult/mmult-O2.asm
	python src/run-simulator.py -q -p $I ./benchmark/toy/mmult/mmult-O3.asm

done