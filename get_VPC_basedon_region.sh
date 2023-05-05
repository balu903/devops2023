#!/bin/bash
set -x -e
echo "1"
echo "2"
echo "3"
1
2
3
REGION=$1
echo "Lets get the VPC Details from the Region $REGION"
aws ec2 describe-vpcs --region $REGION --output json | jq ".Vpcs[].VpcId"