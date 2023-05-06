#!/bin/bash
#NUM='100'
# while true
# do
#     read -p "Enter the Number to Check:" NUM
#     if [ $(expr $NUM % 2) -eq 0 ]
#     then
#         echo "$NUM is a even number"
#     else
#         echo "$NUM is a odd number"
#     fi
# done
        
# for NUM in {1..100}
# do
#     if [ $(expr $NUM % 2) -eq 0 ]
#     then
#         echo "$NUM is a even number"
#     else
#         echo "$NUM is a odd number"
#     fi
# done


NUMS=(10 35 67 78 96 45 34 32 12 34)

for NUM in ${NUMS[@]}
do
    if [ $(expr $NUM % 2) -eq 0 ]
    then
        echo "$NUM is a even number"
    else
        echo "$NUM is a odd number"
    fi
done