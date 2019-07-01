#!/bin/bash
#this is a program for arithmetic operation
var=($1)  #store first argument in variable
len=`echo $1 | wc -l`
pos=$len-1
opr=${var:$pos:1} #this pick our last argument. 
case ${opr} in
	+)
		sum=0
		for((i=0;i<pos;i++))
		do
			value=${var:$i:1}
			sum=`expr $sum + $value` #addition of all argument
		done
		echo "$sum"
		;;
	-)
		sub=${var:0:1}
		for((i=1; i<pos; i++))
		do
			value=${var:$i:1}
			sub=`expr $sub - $value` #subtraction of argument
		done
		echo "$sub"
		;;
	'*')
		mul=${var:0:1}
		for((i=1; i<pos; i++))
		do
			value=${var:$i:1}
			mul=`expr $mul \* $value` #multiplication of arguments
		done
		echo "$mul"
		;;
	/)
		div=${var:0:1}
		for((i=1; i<pos; i++))
		do
			div=`expr "scale=2;$div / ${var:$i:1}" | bc` #division of argument
		done
		echo "$div"
		;;
	*)
		echo " Enter correct operator"
		;;	
esac
