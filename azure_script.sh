#Create RG, VNET & Subnet
#!/bin/bash
RG=devops2023
"RG_NAME"=$(az group list| jq ".[].name" | tr -d '"')
if [[ "${RG_NAME[*]}" == "${RG}" ]];then
    echo "${RG} already exist"
else
    echo "${RG} does not exist, creating new.."
    az group create -- location "East US" -n ${RG}
    j=3
    for j in {3..4}; do
        echo "Creating azure subnets ${j}:"    
        az network vnet subnet create -g ${RG} --vnet-name vnet01 \
           -n subnet-$j -- address-prefixes 10.1.$j.0/24
    done
fi

#az account set --subscription "ae66b29b-41e0-47da-9f0b-3a0a4ba9854a"

################################# body of pipe line#########
#!/bin/bash
az login --identity
RG=AZNEW2
RG_NAME=$(az group list| jq ".[].name" | tr -d '"')
RG_ARRAY=($RG_NAME)
count=${#RG_ARRAY[@]}
echo $count
echo $RG_ARRAY