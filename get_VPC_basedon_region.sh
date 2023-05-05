#!/bin/bash
REGION=$1
echo "Lets get the VPC Details from the Region $REGION"
aws ec2 describe-vpcs --region $REGION --output json | jq ".Vpcs[].VpcId"