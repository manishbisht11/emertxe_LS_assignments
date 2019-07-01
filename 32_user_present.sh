#!/bin/bash
#this is a program to check that user is present or not
echo " Enter the user you want to search "
read B  #read the input from user
C=`grep $B /etc/passwd | cut -f 1 -d ":" ` #grep match the user name in /etc/passwd file  
if [[ $C = $B ]] 
then
	echo "user present "
else
	echo "User is not present"
fi
