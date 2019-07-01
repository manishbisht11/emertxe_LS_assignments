#!/bin/bash
#this is program of use pipes or redirection to create an infinite feedback loop
#$1 is for file name 
tail -f $1 >> $1 | tail -f $1
