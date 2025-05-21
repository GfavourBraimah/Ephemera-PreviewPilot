variable "ecr_repository_name" {
  default = "my-app-repo"
}

variable "ecs_cluster_name" {
  default = "my-app-cluster"
}

variable "ecs_service_name" {
  default = "my-app-service"
}

variable "ecs_task_family" {
  default = "my-app-task"
}

variable "image_tag" {
  default = "latest"
}
