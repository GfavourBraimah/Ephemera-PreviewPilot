terraform {
  backend "s3" {
    bucket = "terraform-myfurniture"
    key    = "terraform.tfstate"
    region = "us-east-1"
      encrypt        = true
  }
}
