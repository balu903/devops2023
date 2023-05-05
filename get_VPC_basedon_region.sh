#!/bin/bash
set -x -e
REGION1=$1
REGION2=$2
REGION3=$3
if [ $# -gt 0 ]
then
echo "Lets get the VPC Details from the Region $REGION1"
aws ec2 describe-vpcs --region $REGION1 --output json | jq ".Vpcs[].VpcId"
echo "Lets get the VPC Details from the Region $REGION2"
aws ec2 describe-vpcs --region $REGION2 --output json | jq ".Vpcs[].VpcId"
echo "Lets get the VPC Details from the Region $REGION3"
aws ec2 describe-vpcs --region $REGION3 --output json | jq ".Vpcs[].VpcId"
else
echo " You have given $# Params means no arguments given"
fi