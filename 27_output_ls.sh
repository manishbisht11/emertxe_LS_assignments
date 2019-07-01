#!/bin/bash
#This is program shows the content of any directory without ls command
cd $1 #$1 is the directory name
for i in * 
do
	echo $i   #print all th files
done
