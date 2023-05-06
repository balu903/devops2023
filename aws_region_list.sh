# Working with Bash List/Arrays
# 1. Take a list of AWS Regions
# 2. Check the Region is valid or not
# 3. If Valid get the VPC ID of the region
# 4. If not throw error as invalid name.

REGIONS=('us-east-1' 'us-east-2' 'ind-hyd-1' 'ap-south-1' 'eu-west-1')

#to print the list elements 
echo ${RGIONS[@]}
#to print  lenght of the list  
echo ${#RGIONS[@]}
# to iterate
for REGION in ${REGIONS[@]};do
    echo $REGIO
done
