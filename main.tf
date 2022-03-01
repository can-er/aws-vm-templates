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
  region  = var.regionname
}

resource "aws_instance" "app_server" {

  count = var.numbercount

  ami           = var.myami
  instance_type = var.myinstancetype
  key_name      = var.mykeyname

  tags = {
    Name = "ExampleAppServerInstance-${count.index}"
  }
}

resource "aws_eip" "ip" {
  count    = var.numbercount
  instance = element(aws_instance.app_server.*.id, count.index)
  vpc      = true
}


