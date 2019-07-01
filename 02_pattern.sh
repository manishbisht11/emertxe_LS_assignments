#!/bin/bash
#This is program of pattern using while loop
echo -n "Enter your limit "
read limit
echo
row=1
A=1
if [ $limit -eq 0 ]     #if user give input 0 then if condition execute
then
  echo "press value greater than 0"
fi
while [ $row -le $limit ] #this loop terminate when value of row becomes equal to use limit. 
do
	column=1
	while [ $column -le $row  ]
	do
		echo -n  "$A "
		column=$(($column+1))
		A=$(($A+1))
	done
row=$(($row+1))
echo -e "\n"
done
