output "ecs_service_name" {
  value = aws_ecs_service.my_furniture_service.name
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.my_furniture_cluster.name
}

output "ecs_service_public_ip" {
  value = aws_ecs_service.my_furniture_service.network_configuration[0].assign_public_ip
}
