terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }
  }
}


provider "aws" {
   region = "eu-west-1"
}

resource "aws_instance" "my_instance" {
  ami = "ami-0c1c30571d2dae5c9"
  instance_type = "t2.micro"
  tags = {
    Name = "test-server"
  }
}

