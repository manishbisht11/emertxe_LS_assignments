#!/bin/bash
#Program of finding larger number in array
ARR=($@)
num=0
for i in $(seq 0 $#)  #value of array goes to i by sequencing
do 
	if [[ ${ARR[$i]} -gt $num ]] #If the value of array element will greater than num then array element goes to num 
	then
		num=${ARR[$i]}
	fi
done
echo " largest no is : $num"
