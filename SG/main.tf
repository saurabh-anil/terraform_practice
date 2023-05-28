provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# Create a security group
resource "aws_security_group" "example_sg" {
  name        = "tg-security-group"
  description = "Made with terraform security group"
  vpc_id      = "vpc-0d75e6ee5d77af7a2" 
  tags = {
    Name: "Tg-security-group"
  }

  # Define ingress rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Define egress rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
