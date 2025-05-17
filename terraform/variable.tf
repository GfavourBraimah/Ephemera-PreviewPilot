variable "ecr_repository_name" {
  default = "my-furniture-repo"
}

variable "ecs_cluster_name" {
  default = "my-furniture-cluster"
}

variable "ecs_service_name" {
  default = "my-furniture-service"
}

variable "ecs_task_family" {
  default = "my-furniture-task"
}

variable "image_tag" {
  default = "latest"
}
