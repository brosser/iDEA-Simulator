#!/usr/bin/bash
# to run:
#	> sh graphPlots.sh <benchmark name> <log file>
# <benchmark name> bubble, crc, factorial, fib, fir, median, mmult, qsort 
# <log file> runSimulations.log
# E.g.
#	> sh graphPlots.sh fib ../runSimulations-6.log
# 
# Returns the number of clock cycles taken for core kernels. 
# Core kernels. Computations within START and STOP tags.

icArray=()

if [ $# -lt 2 ];
then
	echo "Not enough arguments. Please specify (1) benchmark name and (2) the log file, runSimulations.log, or whatever"
	exit
fi

benchmark=$1
filename=$2

if [ -f $benchmark.dat ];
then
	rm -rf $benchmark.dat
fi

echo "Reporting CORE clock cycles taken for the each stages..."

{
echo -e "stage\tO0\tO1\tO2\tO3"

for pipeline in 5 6 7 8 9
do
	print=0
	for i in 0 1 2 3
	do	
		if [ "$print" != 1 ];
		then
			echo -ne "$pipeline\t"
			print=1
		fi

		icArray[$i]=`grep $benchmark-O$i $filename | grep ^$pipeline | cut -f6`
		echo -ne "${icArray[$i]}\t"
	done
	echo -ne "\n"
done
} | tee -a $benchmark.dat
