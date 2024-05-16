provider "aws" {
  region     = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
}
# Ye kar diya OP branch se changes
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id

  tags = var.tags
}