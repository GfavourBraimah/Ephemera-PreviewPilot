#!/bin/bash
set -e

# Update and install dependencies
apt update -y
apt install -y docker

# Start Docker
service docker start

# Log in to ECR
docker login -u AWS -p $(aws ecr get-login-password --region us-east-1) ${ecr_repository_url}

# Pull the Docker image
docker pull ${ecr_repository_url}:${image_tag}

# Run the Docker container
docker run -d -p 8080:80 ${ecr_repository_url}:${image_tag}