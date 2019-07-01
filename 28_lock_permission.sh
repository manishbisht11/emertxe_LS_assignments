#!/bin/bash
#this is a program to lock the permission for others and group
#$1 is for directory name.
FN=$1 
NFN=`cd $1 | chmod 700 * | ls -l` #764 is all the permission for user, read and write permission for group, read permission for others
echo -e " $NFN \n"
