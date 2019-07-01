#!/bin/bash
#this is a program to rename present working directory
#$1 is a name of new directory
var=`pwd` #it is current working directory
cd ..    #do to parent directory
mv $var $1 #rename that directory into new name
