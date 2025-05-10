variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key pair name"
  type        = string
    default     = "Dev_key"
}

variable "ami_id" {
  description = "Ubuntu AMI ID"
  type        = string
  default = "ami-084568db4383264d4"
}
