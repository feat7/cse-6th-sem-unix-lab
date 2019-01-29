#!/bin/bash

# Find given file exists or not

filename=$1

if [ -e $filename ] 
then
    echo "File found"
else
    echo "File not found"
fi

# Largest of 3 numbers

num1=$2
num2=$3
num3=$4

if [ $num1 -gt $num2 ];
then
    if [ $num1 -gt $num3 ];
    then
        echo "$num1 is greatest"
    else 
        echo "$num2 is greatest"
    fi
else
    if [ $num2 -gt $num3 ];
    then
        echo "$num2 is greatest"
    else
        echo "$num3 is greatest"
    fi
fi