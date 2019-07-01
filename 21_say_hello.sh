#!/bin/bash
#Program to print Say_hello according to time
hour=`date|cut -d " " -f5 | cut -f 1 -d ":"` #hour field  will stored in hour variable
i=`date|cut -d " " -f5 | cut -f 1-2 -d ":"`
echo $i #this will show the time 
if [[ $hour -lt 12 ]] #time less than 12PM. it will say Good Morning
then
  echo Hello Good morning
elif [[ (($hour -lt 16)) && (($hour -gt 12)) ]] #time between 12PM-4PM it will print Good afternoon
then
  echo Hello Good afternoon
elif [[ (($hour -lt 20)) && (($hour -gt 16)) ]] #time between 4PM-8PM it will print good evening
then
  echo Hello Good evening
else                #after 8PM it will print good night
	echo Hello Good night
fi
