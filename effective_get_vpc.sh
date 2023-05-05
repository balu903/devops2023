#!/bin/bash
REGIONS=$@
echo ${REGIONS}
for REGION in ${REGIONS}
    do aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"
    echo '---------------------------------------------------------------------'
done