#!/bin/bash

IMAGE_ID=$(aws ec2 describe-images --owners 897279888050 --query 'Images[*].ImageId' --output text) \
&& echo $IMAGE_ID \
&& aws ec2 run-instances --image-id $IMAGE_ID --count 1 --instance-type t2.micro --key-name MyKeyLab3 --security-group-ids $SG --user-data file://user_data.sh
sleep 10
#3# receive image id
#5# run Instance
