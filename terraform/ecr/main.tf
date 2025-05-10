provider "aws" {
  region = var.region
}

# Create ECR Repository
resource "aws_ecr_repository" "my_app_repo" {
  name                 = var.repository_name
  image_tag_mutability = "MUTABLE" // Allow mutable tags for the repository
  image_scanning_configuration {
    scan_on_push = true // Enable image scanning on push
  }

  tags = {
    Name = var.repository_name
  }
}