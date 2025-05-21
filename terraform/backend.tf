terraform {
  backend "s3" {
    bucket = "terraform-myfurniture" #replace with your bucket name
    # The bucket must be in the same region as the provider
    key    = "terraform.tfstate"
    region = "us-east-1"
      encrypt        = true
  }
}
