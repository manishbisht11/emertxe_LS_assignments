#!/bin/bash
#This is a program of addtion od decimal values.
echo -n "Enter first number  : "
read A #read user input
echo -n "Enter second number : "
read B #read user input
if [ $A = 0 -a $B = 0 ] #if both the values of user is 0 then if condition will execute
then
	echo " Enter values greater than 0"
	exit
fi
echo -e " Addition of $A and $B is : \c"
echo "scale=2; $A+$B " | bc  #scale is used to get limited values after decimal. bc is a arbitrary precision calculator. 
