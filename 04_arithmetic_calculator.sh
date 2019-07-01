#!/bin/bash
#This is a program for arithmetic calculator
echo -e " Enter first number : \c"
read a #user's first input
echo -e " Enter second number : \c"
read b #user's second input
echo "enter your operator +,-,*,/"
read opt  #read operator form user
case ${opt} in
	+)
		echo -e " addition of $a and $b is : \c"
		 echo "scale=2; $a+$b" | bc            #addition of user's inputs. It can be in decimal
		;;
	-)
		echo -e " subtraction of $a and $b is : \c"
		echo "scale=2; $a - $b" | bc           #subtraction of first to second input values 
		;; 
	\*)
		echo -e " multiplication of $a and $b is : \c"
		echo "scale=2; $a * $b" | bc           #multiplication of two values
		;;
	/)
		echo -e " Division of $a and $b is : \c"
		echo "scale=2; $a / $b" | bc          #division of first to second input 
		;;
	*)
		echo "please enter valid operator"
		;;
esac
