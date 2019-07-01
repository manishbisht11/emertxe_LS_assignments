#!/bin/bash

prefix=$1
cd FOLDER
arr=($(ls))
len=${#arr[*]}
i=0
while [ $i -lt $len ]
do
	mv ${arr[$i]} $1$i
	i=`expr $i + 1`
done
