# Create an ECS Cluster
resource "aws_ecs_cluster" "my_furniture_cluster" {
  name = var.ecs_cluster_name
}

# ✅ Reuse Existing IAM Role Instead of Creating a New One
data "aws_iam_role" "ecs_task_execution_role" {
  name = "${var.ecs_cluster_name}-task-execution-role"
}

# ✅ Skip IAM Role Creation and Attachment Since We're Using Existing Role
# Commented out:
# resource "aws_iam_role" "ecs_task_execution_role" { ... }
# resource "aws_iam_role_policy_attachment" "ecs_task_execution_role_policy" { ... }

# Create an ECS Task Definition
resource "aws_ecs_task_definition" "my_furniture_task" {
  family                   = var.ecs_task_family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = data.aws_iam_role.ecs_task_execution_role.arn
  cpu                      = "256"
  memory                   = "512"
  container_definitions    = jsonencode([
    {
      name      = "my-furniture-container"
      image     = "${aws_ecr_repository.my_furniture_repo.repository_url}:${var.image_tag}"
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
          protocol      = "tcp"
        }
      ]
    }
  ])
}

# Create an ECS Service
resource "aws_ecs_service" "my_furniture_service" {
  name            = var.ecs_service_name
  cluster         = aws_ecs_cluster.my_furniture_cluster.id
  task_definition = aws_ecs_task_definition.my_furniture_task.arn
  desired_count   = 1
  launch_type     = "FARGATE"
  network_configuration {
    subnets         = aws_subnet.public_subnets[*].id
    security_groups = [aws_security_group.ecs_service_sg.id]
    assign_public_ip = true
  }
  depends_on = [aws_ecs_task_definition.my_furniture_task]
}
