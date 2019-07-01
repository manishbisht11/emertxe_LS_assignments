#!/bin/bash
#this is a program to count the user id between 500 to 1000 
ARR=(`cat /etc/passwd | cut -f 3 -d ":"`) #this cut the 3rd field of /etc/passwd file.
A=`cat /etc/passwd | wc -l ` #number of lines present in /etc/passwd files, it will store in A variable. 
count=0
for((i=1; i<=A; i++)) #loop will terminate when th value of i equals to number of lines present on current file.
do
	ab=${ARR[$i]}
	if [[ (($ab -le 1000)) && (($ab -ge 500)) ]]
	then
		count=$((count+1))
	fi
done
echo "Total count of user ID between 500 to 1000 is : $count "
