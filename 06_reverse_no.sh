#!/bin/bash
#This is the program for reverse number
NUM=$1
rev=0
rem=0
	if [ $1 -lt 10 ] #if the value of argument is less than 10 it will execute
	then 
		echo " please enter multi digit number"
		exit
	else
	while [ $NUM -gt 0 ] #comparing the value of argument. It should be greater than 0 for execute this while loop.
	do
		rem=`expr $NUM % 10`
		rev=$(($rev * 10 + $rem))
		NUM=$(($NUM / 10))
done
	echo "Reverse of $1 is :  $rev"
fi
