#!/bin/bash

filename=$1
rename=$2

filesize=$(stat -c%s "$filename")

if [[ $filesize -gt 262144 ]];
then
    mv "$filename" "$rename"
    echo "File renamed to $rename"
fi