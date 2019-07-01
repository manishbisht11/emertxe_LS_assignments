#!/bin/bash

#This is program of pattern using while loop
echo -n "Enter your limit "
read limit
echo
if [ $limit -eq 0 ]     #if user give input 0 then if condition execute
then
	echo "press value greater than 0"
fi
row=1
while [ $row -le $limit ] #this loop terminate when row value equals to user input value.
do
	column=1
	while [ $column -le $row  ]
	do
		echo -n  "$column "
		column=$(($column+1))
	done
row=$(($row+1))
echo -e "\n"
done
