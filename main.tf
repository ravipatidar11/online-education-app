terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = "ap-south-1"
  access_key = "AKIAZ6RMHHQBAH2W5TF5"
  secret_key = "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"
}

resource "aws_instance" "ec2-instance" {
  ami           = "ami-051a31ab2f4d498f5"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2"
  }
}