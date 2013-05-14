#!/bin/bash
# Bash script to run all toy benchmark simulations
# To run this script, do:
# $ chmod +x runSimulations.sh
# $ ./runSimulations.sh
# 
# Returns just the pipeline stage and the number of CORE clock cycles.
# CORE, computation kernels within the START and STOP tags.
# 
# Status: Kinda redundant.
#
# Warning: May need to change the benchmark/ directory path depending on where the script is run.
#
# Sample output:
#
#[  6 Stage Pipeline  ]:  IF - IF - ID - EX - EX - WB
# Result                 Benchmark                    Cycles    NOPs    CPI     Core    CoreNOPs
#-----------------------------------------------------------------------------------------------
#6 4358
#6 1801
#6 1577
#6 1398
#6 29678

rm -rf runSimulations.log

{
for E in 2 3 4
do
	for F in 1 2 3 
	do
		let I=$F+1+$E+1	

		echo -e "\n"
		echo -ne "[  $I Stage Pipeline  ]:"
		echo -ne "\t"
		for ((i=1; i <= $F; i++))
		do
		 if [ $i -eq 1 ] 
		 	then echo -ne " IF " 
		 fi
		 if [ $i -ne 1 ] 
		 	then echo -ne "- IF " 
		 fi
		done
		echo -ne "- ID " 
		for ((i=1; i <= $E; i++))
		do
		 echo -ne "- EX "
		done
		echo -e "- WB "
		echo -e "# Result \t\t Benchmark\t\t      Cycles\tNOPs\tCPI\tCore\tCoreNOPs"
		echo -e "-----------------------------------------------------------------------------------------------"
		# Fib
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fib/fib-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fib/fib-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fib/fib-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fib/fib-O3.asm

		# Fir
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fir/fir-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fir/fir-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fir/fir-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/fir/fir-O3.asm

		# Median
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/median/median-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/median/median-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/median/median-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/median/median-O3.asm

		# MMult
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/mmult/mmult-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/mmult/mmult-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/mmult/mmult-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/mmult/mmult-O3.asm

		# Bubble Sort
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/bubble/bubble-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/bubble/bubble-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/bubble/bubble-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/bubble/bubble-O3.asm

		# Factorial
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/factorial/factorial-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/factorial/factorial-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/factorial/factorial-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/factorial/factorial-O3.asm

		# Quick Sort
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/qsort/qsort-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/qsort/qsort-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/qsort/qsort-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/qsort/qsort-O3.asm

		# CRC
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/crc/crc-O0.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/crc/crc-O1.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/crc/crc-O2.asm
		echo -en "$I "; python src/run-simulator.py -c -q -p $I -f $F -d 1 -e $E -w 1 ./benchmark/toy/crc/crc-O3.asm

	done
done
} | tee -a runSimulations.log
