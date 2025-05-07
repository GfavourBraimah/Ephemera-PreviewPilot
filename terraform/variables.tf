variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1" # Replace with your preferred region
}

variable "ecr_repository_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "my-furniture-repo" # Replace with your repository name
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "my-furniture-cluster"
}

variable "ecs_task_family" {
  description = "ECS Task family name"
  type        = string
  default     = "my-furniture-task"
}

variable "ecs_service_name" {
  description = "Name of the ECS service"
  type        = string
  default     = "my-furniture-service"
}

variable "image_tag" {
  description = "Docker image tag"
  type        = string
  default     = "latest"
}


variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "my-furniture"
}