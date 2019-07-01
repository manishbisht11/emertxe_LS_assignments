#!/bin/bash
#this is a program to generate a random password
pwd=` cat /dev/urandom | tr -cd [:alnum:][:punct:] | head -c7` #tr command only pick alpha-numeric and punctuation from /dev/urandom file.
echo "Password is : $pwd"
