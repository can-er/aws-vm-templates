terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-3"
}

resource "aws_instance" "app_server" {

  count = 3

  ami           = "ami-08cfb7b19d5cd546d"
  instance_type = "t2.micro" 
  key_name      = "macOS-key"

  tags = {
    Name = "ExampleAppServerInstance-${count.index}"
  }
}

resource "aws_eip" "ip" {
  count    = 3
  instance = element(aws_instance.app_server.*.id, count.index)
  vpc      = true
}


