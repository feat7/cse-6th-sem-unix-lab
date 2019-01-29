#!/bin/bash

num1=$1
num2=$2

echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice: " ch

case $ch in
    "1") echo $(($num1+$num2))
    ;;
    "2") echo $(($num1-$num2))
    ;;
    "3") echo $(($num1*$num2))
    ;;
    "4") echo $(($num1/$num2))
    ;;
    *) echo "Please enter a valid choice."
    ;;
esac