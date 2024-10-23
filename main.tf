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
  profile = "niv"
}


resource "aws_instance" "myweb" {
  ami = "ami-0399b1f276c3e2999"
  instance_type = "t3.micro"
  key_name = aws_key_pair.myweb.id
  vpc_security_group_ids = [aws_security_group.myweb.id]
  tags = {
    Name = "myweb"
  }
}

resource "aws_key_pair" "myweb" {
  key_name = "project"
  public_key = file("/home/niv/.ssh/id_ed25519.pub")
}


resource "aws_security_group" "myweb" {
description = "launch-wizard-1 created 2024-10-23T07:00:12.303Z"
    egress   {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = null
            from_port        = 0
            protocol         = "-1"
            to_port          = 0
        }
    ingress  {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = null
            from_port        = 3000
            protocol         = "tcp"
            to_port          = 3000
        }
    ingress  {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = null
            from_port        = 35019
            protocol         = "tcp"
            to_port          = 35019
        }
    ingress  {
            cidr_blocks      = [
                "0.0.0.0/0",
            ]
            description      = null
            from_port        = 8080
            protocol         = "tcp"
            to_port          = 8080
        }
    ingress  {
            cidr_blocks      = [
                "77.126.1.229/32",
            ]
            description      = null
            from_port        = 22
            protocol         = "tcp"
            to_port          = 22
        }
    name        = "launch-wizard-1"
    vpc_id      = "vpc-0daa5961ce2929e7a"
}
  

