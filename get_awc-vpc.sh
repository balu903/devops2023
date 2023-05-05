#!/bin/bash
#REGION='us-east-1'
echo "Getting the VPC ID for region $1"
REGION=$1
FORMAT='json'
#FORMAT=$1
echo "Lets Get VPC details from the Regio $REGION"
aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"
echo '---------------------------------------------------------------------'

echo "Getting the VPC ID for region $2"
REGION=$2
echo "adding 2nd region"
FORMAT='json'
echo "Lets Get VPC details from the Regio $REGION"
aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"

