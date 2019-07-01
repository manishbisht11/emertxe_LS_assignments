#!/bin/bash
#This is a program of ascending and decending of number.
echo " ****** ENTER YOUR ARRAY LIMIT ******"
read n 
if [ $n -eq 0 ]
then 
	echo " Please enter values more than 0 "
	exit
fi
echo "Enter your numbers for sorting "
for((i=0; i<$n; i++)) #read user numbers
do
   echo -n " $i : "	
  read ab[$i]
done

echo -e "You have entered $n digits and these are : \c"
for((i=0; i<$n; i++)) 
do 
  echo -n "  ${ab[$i]}"
done
#this is program for decending order
for (( i = 0; i < $n ; i++ ))
 do
	 for (( j = `expr $i + 1`; j <= $n; j++ ))
	 do
		 if [[ ${ab[$i]} -lt ${ab[$j]} ]]
		 then
			 t=${ab[$i]}
			 ab[$i]=${ab[$j]}
			 ab[$j]=$t
		 fi
	 done
 done
 
 echo
 echo " Decending order "
 for (( i=0; i < $n; i++ )) 
 do
 echo ${ab[$i]}  #this prints values of i in decending order
 done

#this is program for ascending order
for (( i = 0; i < $n ; i++ ))
 do
	 for (( j = `expr $i + 1`; j < $n; j++ ))
	 do
		 if [[ ${ab[$i]} -gt ${ab[$j]} ]]
		 then
			 t=${ab[$i]}
			 ab[$i]=${ab[$j]}
			 ab[$j]=$t
		 fi
	 done
 done
 echo -e "\n Ascending order "
 for (( i=0; i < $n; i++ ))
 do
 echo ${ab[$i]} #it print the values of i in ascending order
 done
