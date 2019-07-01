#!/bin/bash
#This is a program to point number of lines.
#$1 is file name
#$2 is a last line want to print.
#$3 is the line number from where you wants to print.
fl=`cat $1 | wc -l`
echo $fl
A=`expr $fl - $2`
echo $A
tail -$A $1 | head -$3
