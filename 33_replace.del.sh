#!/bin/bash
#this is a program of rename and deleteing 20% of lines.
nol=` cat $1 | wc -l` #count the no.of line in file
echo $nol
s=$(($nol * 20))
pr=$(($s/100)) #it counts the 20% lines of file
echo $pr
echo "--------------------------------------------------------------------------"
abc=(`shuf -i 1-$nol`)
for((i=1; i<=pr; i++ ))
do
sed -i "${abc[i]} s/.*/<<----del--->>/" $1
done
cat $1
