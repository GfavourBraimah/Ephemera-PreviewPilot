resource "aws_ecr_repository" "my_app_repo" {
  name                 = var.ecr_repository_name
  force_delete          = true
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "my-app-repo"
  }
}
