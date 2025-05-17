# ECR Repository URL
output "ecr_repository_url" {
  description = "URL of the ECR repository to which Docker images will be pushed"
  value       = aws_ecr_repository.my_furniture_repo.repository_url
}

# ECS Cluster Name
output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.my_furniture_cluster.name
}

# ECS Service Name
output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.my_furniture_service.name
}

# Public Subnet IDs
output "public_subnets" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

# VPC ID
output "vpc_id" {
  description = "The ID of the main VPC"
  value       = aws_vpc.main.id
}
