terraform {
  backend "s3" {
    bucket  = "techbleatweek8"
    key     = "env/prod/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
    dynamodb_table = "terraform-locks"

  }

 // required_providers {
  //  aws = {
  //    source  = "hashicorp/aws"
 //     version = "~> 5.0.0"
 //   }
 // }
//}


provider "aws" {
  region = "us-east-2"
}

resource "ec2_instance" "java-node" {
    ami = "ami-06e3c045d79fd65d9"
    key_name = "deledele"
    instance_type = "t3.micro"

    tags = {
        Name = "java-node"
    }
}

resource "ec2_instance" "nginx-node" {
    ami = "ami-06e3c045d79fd65d9"
    key_name = "deledele"
    instance_type = "t3.micro"

    tags = {
        Name = "nginx-node"
    }
}

//note njbjbjkjnkjn