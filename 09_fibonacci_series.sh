#!/bin/bash
#This is program to print febonacci series.
echo -n " Enter any number : "
read N #user limit, how many values you want to print
a=0
b=1
if [ $N -eq 0  ]
then
	echo  "Enter value greater than 0 "
	exit
fi
for((i=1; i<=$N; i++)) #when the value of i equals to user limit then this will loop terminate 
do 
	echo -e " $a \c"  
	large=($a)
	next=`expr $a + $b` #adding values of a and b 
	a=$b              #swap value of b into a
	b=$next             #swap value of nx(nextnumber) into b
done
echo
echo "largest number in series is : $large"
