#!/bin/bash

a=0
ans=0

while [ "$a" -lt 10 ]
do
    a=`expr $a + 1`
    ans=`expr $ans + $a`
done

echo "$ans"