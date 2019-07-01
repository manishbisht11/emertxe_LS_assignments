#!/bin/bash
#This program shows the information of content repeatly by using loop.
function question() #define the function
{
echo " 1 = Currently logged users"
echo " 2 = Current working Directory "
echo " 3 = OS Name & version "
echo " 4 = Hard disk Information"
echo " 5 = File sysytem Information"
#echo " 5 = Processor Type"
echo " 6 = Memory Information"
echo " 7 = Show all available shells in your system"
echo " 8 = CPU Information"
echo -e " **** Enter your option  **** "
	read option 
	echo

case ${option} in #depending on user input it choose the case.
	1)
		echo `whoami`
		;;
	2)
		echo `pwd`
		;;
	3)
		echo `uname -n`
		echo `uname -r` 
		;;
	4)
		echo `sudo fdisk -l`
		;;
	5)
		A=`df -h`
		echo $A
		;;
	6)
		echo `cat /proc/meminfo`
		;;
	7)
		echo `cat /etc/shells`
		;;
	8)
		echo `lshw | grep -i cpu`
		;;
	*)
		echo " enter correct number................. !!!!!!!"
		;;
esac
}
question

while [ 1 ] #infinite loop
do
	echo
	echo
	echo " Do you want to continue "
	echo " Press y for yes & n For No"
	read value
	if [ $value = y -o $value = Y ] #if user press y then user again call the function
	then 
		question
	elif [ $value = n -o $value = N ] #if user press n then program will terminate.
	then
		exit
   	else
	echo " Error :  Enter correct option..............!!!!! "
	fi
done
