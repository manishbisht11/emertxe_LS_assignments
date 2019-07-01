#!/bin/bash
#This is program to delete the empty line in any file
#$1 is the file where empty line are present
#$2 is th file where content of $1 file will save after deleting empty lines.
# '/^$/d' :  This is trying to match $ at the start of the line (^) and will delete (d) any lines that matches.
sed '/^$/d' $1 > $2
cat $2
