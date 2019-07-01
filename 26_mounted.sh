#!/bin/bash
#This is a program of file system is mounted
FN=$1
ARR=(`df | tr -s " " | cut -f 1 -d " "`) #extract the 1 field 
ARR1=(`df | tr -s " " | cut -f 6 -d " "`) #extract the 6th field
len=${#ARR[@]}
var=0
for((i=1; i<=len; i++)) #loop will terminate when values of i becomes equal to len
do 
if [[ $1 = ${ARR[i]} ]] #if condion is satisfy the value of var becomes 1
then
echo " ${ARR[i]} is mounted on ${ARR1[i]}"
var=1
fi
done
if [ $var -eq 0 ]
then
	echo "Enter correct file name "
fi
