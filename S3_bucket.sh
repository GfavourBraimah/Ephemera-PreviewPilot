#!/bin/bash

set -e

BUCKET_NAME="terraform" # Replace with your unique bucket name
REGION="us-east-1"
DYNAMO_TABLE="terraform-lock-table"

echo "Creating S3 bucket: $BUCKET_NAME in region $REGION..."
aws s3api create-bucket \
  --bucket $BUCKET_NAME \
  --region $REGION \
  --create-bucket-configuration LocationConstraint=$REGION || echo "Bucket might already exist or region is us-east-1"

echo "Enabling versioning on bucket..."
aws s3api put-bucket-versioning \
  --bucket $BUCKET_NAME \
  --versioning-configuration Status=Enabled

echo "Enabling default server-side encryption on bucket..."
aws s3api put-bucket-encryption \
  --bucket $BUCKET_NAME \
  --server-side-encryption-configuration '{
    "Rules": [{
      "ApplyServerSideEncryptionByDefault": {
        "SSEAlgorithm": "AES256"
      }
    }]
  }'

echo "Creating DynamoDB table: $DYNAMO_TABLE for Terraform state locking..."
aws dynamodb create-table \
  --table-name $DYNAMO_TABLE \
  --attribute-definitions AttributeName=LockID,AttributeType=S \
  --key-schema AttributeName=LockID,KeyType=HASH \
  --billing-mode PAY_PER_REQUEST \
  --region $REGION

echo "Waiting for DynamoDB table to become active..."
aws dynamodb wait table-exists --table-name $DYNAMO_TABLE --region $REGION

echo "Terraform backend resources created successfully!"
