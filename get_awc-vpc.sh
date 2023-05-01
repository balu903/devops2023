#!/bin/bash
REGION='us-east-1'
FORMAT='table'
aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcID