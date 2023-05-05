#!/bin/bash
# set -x -e #-e to stop at the error, script wont proccede furthur 
# REGION1=$1
# REGION2=$2
# REGION3=$3
# REGIONS=$@
 REGIONS=$*
echo $REGIONS
echo "----------------------------------------------------------------------"
if [ $# -gt 0 ];then
for REGION in $REGIONS;do
    echo "Lets get the VPC Details from the Region $REGION"
    aws ec2 describe-vpcs --region $REGION --output json | jq ".Vpcs[].VpcId"
    echo "####################################################################"
done
else
echo " You have given $# Params means no arguments given"
fi