provider "aws" {
 region = "eu-west-2"
 }
resource "aws_instance" "example1" {
 ami           = "ami-053a617c6207ecc7b"
 instance_type = "t2.micro"
 }

