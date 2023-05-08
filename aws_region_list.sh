# Working with Bash List/Arrays
# 1. Take a list of AWS Regions
# 2. Check the Region is valid or not
# 3. If Valid get the VPC ID of the region
# 4. If not throw error as invalid name.

# REGIONS=('us-east-1' 'us-east-2' 'ind-hyd-1' 'ap-south-1' 'eu-west-1')

# #to print the list elements
# echo ${RGIONS[@]}
# #to print  lenght of the list
# echo ${#RGIONS[@]}
# # to iterate
# for REGION in ${REGIONS[@]};do
#     echo $REGIO
# done
# # to print rane of elements
# echo ${#RGIONS[@]:0:4}

#!/bin/bash
REGIONS=('us-east-1' 'us-east-2' 'ind-hyd-1' 'ap-south-1' 'eu-west-1')
for REGION in ${REGIONS[@]}; do
    echo "The REGION name is $REGION"
    echo "---------------------------"
    #VPC_ID=$(aws ec2 describe-vpcs --region $REGION | jq "Vpcs[].VpcId" | sed "s/\"/'/g" )
    VPC_ID=$(aws ec2 describe-vpcs --region $REGION | jq "Vpcs[].VpcId" | tr -d '"')
    #convert the VPC_ID to array as below
    VPC_ARR=($VPC_ID)
    echo ${#VPC_ARR[@]}
    if [ ${#VPC_ARR[@]} -gt 0 ]
    then 
        echo "The REGION name is $REGION is Valid. Retriving VPC Information..."
        for VPC in $VPC_ID;do
           echo $VPC
        done
    else
        echo "Invalid REGION $REGION"
        #break
        #continue
    fi
done
