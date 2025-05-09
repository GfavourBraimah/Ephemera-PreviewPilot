# Define the AWS provider
provider "aws" {
  region = "us-east-1" # Must be a string
}

# Create the ECR repository
resource "aws_ecr_repository" "my_furniture_repo" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

# Output the repository URL
output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.my_furniture_repo.repository_url
}
