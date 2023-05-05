#!/bin/bash
set -x -e
REGION=$1
if [ $# -gt 0 ]
then
echo "Lets get the VPC Details from the Region $REGION"
aws ec2 describe-vpcs --region $REGION --output json | jq ".Vpcs[].VpcId"
else
echo " You have given $# Params means no arguments given"
fi