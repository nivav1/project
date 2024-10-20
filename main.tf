terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "il-central-1"
}

tags = {
  name = "myweb"
}

resource "aws_instance" "my_server" {
  ami = "ami-0399b1f276c3e2999"
  instance_type = "t3.micro"
}
