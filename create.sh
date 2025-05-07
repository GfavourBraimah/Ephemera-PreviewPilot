#!/bin/bash

# Base directory
BASE_DIR="My-Furniture"

# Create directories
mkdir -p $BASE_DIR/.github/workflows
mkdir -p $BASE_DIR/docker
mkdir -p $BASE_DIR/terraform
mkdir -p $BASE_DIR/src/js

# Create files
touch $BASE_DIR/.github/workflows/deploy-preview.yml
touch $BASE_DIR/docker/Dockerfile
touch $BASE_DIR/terraform/main.tf
touch $BASE_DIR/terraform/variables.tf
touch $BASE_DIR/terraform/outputs.tf
touch $BASE_DIR/terraform/ecr.tf
touch $BASE_DIR/terraform/ecs.tf
touch $BASE_DIR/terraform/iam.tf
touch $BASE_DIR/terraform/networking.tf
touch $BASE_DIR/src/index.html
touch $BASE_DIR/src/app.css
touch $BASE_DIR/src/js/app.js
touch $BASE_DIR/src/about.html
touch $BASE_DIR/src/contact.html
touch $BASE_DIR/src/product.html
touch $BASE_DIR/README.md
touch $BASE_DIR/.gitignore

# Print success message
echo "Project structure created successfully!"