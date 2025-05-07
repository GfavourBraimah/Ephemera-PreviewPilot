# Define the AWS provider
provider "aws" {
  region = var.aws_region
}

# Create the ECR repository
resource "aws_ecr_repository" "my_furniture_repo" {
  name                 = var.ecr_repository_name
  image_tag_mutability = "MUTABLE" # Allow mutable tags for the repository
  image_scanning_configuration {
    scan_on_push = true # Enable image scanning on push
  }
}

# Output the repository URL
output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.my_furniture_repo.repository_url
}