#!/bin/bash

# Add 10 odd numbers

ans=0

for (( i=1; i<2*10; i=`expr $i + 2` ))
do
    ans=`expr $ans + $i`
done

echo "Sum of 10 odd numbers is $ans"

# Display prime numbers in LSB and USB

isPrime() {
    number=$1
    flag=1

    square_root=`echo "sqrt($number)" | bc -l`
    square_root=${square_root%.*}
    for (( i=2; i<=$square_root; i++ ))
    do
        ret=$(($number%$i))
        if [ $ret -eq 0 ];
        then
            flag=0
        fi
    done

    echo "$flag"
}

lsb=$1
usb=$2

for (( j=$lsb; j<=$usb; j++ ))
do
    check=`isPrime $j`
    if [ $check -eq 1  ];
    then
        echo -n "$j "
    fi
done