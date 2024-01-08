# File: ec2_instance/main.tf

variable "ami" {
  description = "ID của AMI cho EC2 instance"
}

variable "instance_type" {
  description = "Loại của EC2 instance"
}

variable "tags" {
  description = "Các tag cho EC2 instance"
  type        = map(string)
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = var.tags
}
