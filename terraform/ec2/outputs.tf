output "ec2_public_ip" {
  value = aws_instance.preview.public_ip
}
