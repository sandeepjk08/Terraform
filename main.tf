terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.1"
    }
  }
}

provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "Demo" {
  ami           = "ami-085ad6ae776d8f09c"
  instance_type = "t2.micro"
  key_name      = "webkeypair"

  tags = {
    Name = "sandeep-ec2"
  }

  # Resource arguments
}

