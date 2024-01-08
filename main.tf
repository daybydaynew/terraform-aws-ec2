provider "aws" {
  region = "us-east-1"  
}

variable "ec2_name" {
  description = "Name EC2 instance"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"              
  tags = {
    Name = var.ec2_name
  }
}
