#!/bin/bash
#NUM='100'
while true
do
    read -p "Enter the Number to Check:" NUM
    if [ $(expr $NUM %2) -eq 0]
    then
        echo "$NUM is a even number"
    else
        echo "$NUM is a odd number"
    fi
done
        