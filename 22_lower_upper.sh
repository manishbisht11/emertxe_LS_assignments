#!/bin/bash
#this is a program of upper and lower case.
echo -e " Enter any string in lower case : \c "
read STR
echo -n " Lower to upper converted output: "
num=`$STR | tr  [:lower:][:upper:]` #change the string form lower case to upper case
   echo -n  " $num " 
   echo 


echo -e " Enter any string in Upper case : \c "
read STR
echo -n " Upper to lower converted output : "
num=`$STR | tr A-Z a-z` #change the string from upper case to lower case
echo $num
