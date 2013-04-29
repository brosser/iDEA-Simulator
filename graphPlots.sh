#!/usr/bin/bash
# to run: sh graphPlots.sh benchmark

filename="runSimulations.log"
benchmark=$1
icArray=()

if [ -f $benchmark.dat ];
then
	rm -rf $benchmark.dat
fi

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
