#!/bin/bash
#program to print number of executable file present in each directory

paths=(`echo $PATH | sed 's/:/\n/g'`) #store all path in PATH variable

count=${#paths[@]}
for((i=1; i<count; i++))
do
	echo ${paths[$i]}
	ex=`find ${paths[$i]} -executable -type f | wc -l`
	echo $ex
done

