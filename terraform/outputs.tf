output "ecr_repository_url" {
  value = aws_ecr_repository.my_furniture_repo.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.my_furniture_cluster.name
}

output "ecs_service_name" {
  value = aws_ecs_service.my_furniture_service.name
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "vpc_id" {
  value = aws_vpc.main.id
}
