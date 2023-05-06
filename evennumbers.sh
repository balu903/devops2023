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
 #=============================       
# for NUM in {1..100}
# do
#     if [ $(expr $NUM % 2) -eq 0 ]
#     then
#         echo "$NUM is a even number"
#     else
#         echo "$NUM is a odd number"
#     fi
# done
#====================

# NUMS=(10 35 67 78 96 45 34 32 12 34)

# for NUM in ${NUMS[@]}
# do
#     if [ $(expr $NUM % 2) -eq 0 ]
#     then
#         echo "$NUM is a even number"
#     else
#         echo "$NUM is a odd number"
#     fi
# done

# #!/bin/bash

NUM1=$1
NUM2=$2
if [ $NUM1 -gt $NUM2 ]; then
    echo "$NUM1 is greater than $NUM2"
else 
    echo "$NUM2 is greater than $NUM1"
fi

#!/bin/bash
NUM1=$1
if [ $NUM1 -gt 10 $NUM1 -lt 20 ]