#!/bin/bash
#this is a program tom search the longest and shortest user name.
ARR=(`cat /etc/passwd | cut -d ':' -f1`) #the first field of file /etc/password is cut and stored in ARR variable
A=${#ARR[@]} #this counts the no. of alphabets in word
size=`expr $A - 1`
num=${#ARR[0]}
#program for shortest user name 
for((i=1; i<=size; i++))
do	
	ln=${#ARR[$i]}
	#echo ${ARR[$i]}
	if [ $ln -lt $num ] #comparing the length of user-name
	then
		num=$ln
		sr=${ARR[$i]}
	fi
done
echo "shortest user name is : $sr"
#program for longest user name
for((i=1; i<=size; i++))
do	
	ln=${#ARR[$i]}
	#echo ${ARR[$i]}
	if [ $ln -gt $num ] #comparing the length of user-name
	then
		num=$ln
		sr=${ARR[$i]}
	fi
done
echo "greatest user name is : $sr"

