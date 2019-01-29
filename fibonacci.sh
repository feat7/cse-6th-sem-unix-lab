#!/bin/bash

N=$1
a=0
b=1

until [ "$N" -eq -1 ]
do
    N=`expr $N - 1`
    echo -n "$a "
    temp=$((a+b))
    a=$b
    b=$temp
done