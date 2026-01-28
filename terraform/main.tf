terraform {
    backend "s3" {
        bucket = "techbleatweek8"
        key = "env/prod/terraform.statefile"
        region = "us-east-2"
        encrypt = true
    }
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