#!/bin/bash
#this is a program of recursion 
a=($@) #array of arguments
function recursion() #functio declare
{
	declare -a args=($@) #stores the values of arguments in args
	echo $args
 
	len=${#args[@]} #len counts the number of arguments
#	echo $len
	if [ $len -ge 1 ]
	then 
		echo $1
		recursion ${args[@]:1}
	fi
}
recursion $@ #function call
