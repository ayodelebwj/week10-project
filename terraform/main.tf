terraform {
    backend "s3" {
        bucket = "techbleatweek8"
        key = "env/prod/terraform.statefile"
        region = "us-east-2"
        encrypt = true
    }
    required_providers {
        source = "hashicorp/terraform"
        version = "~=5.0"
    }
}

provider "aws" {
  region = "us-east-2"
}

resource "ec2_instance" "java-node" {
    ami = ""
    key_name = "deledele"
    instance_type = "t3.micro"

    tags = {
        Name = "java-node"
    }
}

resource "ec2_instance" "nginx-node" {
    ami = ""
    key_name = "deledele"
    instance_type = "t3.micro"

    tags = {
        Name = "nginx-node"
    }
}

//note njbjbjkjnkjn