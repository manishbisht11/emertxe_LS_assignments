#!/bin/bash
echo -n "Enter your limit : "
read N #user give the limit
for((column=1; column<=$N; column++)) #when value of i equals to user input this loop will terminates.
do
	for((row=1; row<=$N; row++)) #when value of j equals to user input it will terminate.
	do
		k=`expr $column + $row`
		L=`expr $k % 2`
		if [ $L -eq 1 ]
		then
			echo -e  -n " \033[47m " #to print black color field
		else
			echo -e  -n " \033[40m " #to print white color field
		fi
	done	
			echo -e  -n " \033[0m "  #to print defaulf background color.
echo
done
