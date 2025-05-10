variable "region" {
  description = "AWS region where the ECR repository will be created"
  default     = "us-east-1"
}

variable "repository_name" {
  description = "Name of the ECR repository"
  default     = "my-app-repo"
}