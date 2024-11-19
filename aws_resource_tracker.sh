#!/bin/bash


#############################
# Author: Jatin
# Date: 19th-november-2024
#
# Version: v1
#
# This script will report the aws resource usage
##############################

set -x
# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM User

# list s3 buckets
aws s3 ls

# list ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
aws lambda list-functions

#list iam users
aws iam list-users

