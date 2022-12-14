terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" 
}
}
}


provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA25XGYTS4FOPK5BXX"
  secret_key = "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"
}


resource "aws_instance" "terraform-ec2" {
	count = 4
	ami = "ami-07ffb2f4d65357b42"
  	instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2-instance"
  }
}


resource "aws_s3_bucket" "my_s3_bucket" {
	bucket = "bhanubundela89"
	tags={
		Name = "terraform_s3_bucket"
}
	}


output aws_ec2_ip {
value = aws_instance.terraform-ec2[*].public_ip
}
output aws_s3_ip {
value = aws_s3_bucket.my_s3_bucket.bucket
}

