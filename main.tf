provider "aws" {
 region="eu-west-2"
 }

 resource "aws_eip" "ip" {
  instance = aws_instance.example.id
 }
 resource "aws_instance" "example" {
  ami = "ami-053a617c6207ecc7b"
  instance_type = "t2.micro"
 }
#resource "aws_s3_bucket" "example" {
 #bucket="prasanna_s3bucket"
#} 
