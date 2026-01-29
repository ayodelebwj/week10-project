terraform {
  backend "s3" {
    bucket  = "techbleatweek8"
    key     = "env/prod/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
 required_providers {
  aws = {
  source  = "hashicorp/aws"
   version = "~> 5.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "java_node" {
    ami = "ami-06e3c045d79fd65d9"
    key_name = "deledele"
    instance_type = "t3.micro"

    tags = {
        Name = "java-node"
    }
}

resource "aws_instance" "nginx_node" {
    ami = "ami-06e3c045d79fd65d9"
    key_name = "deledele"
    instance_type = "t3.micro"

    tags = {
        Name = "nginx-node"
    }
}

