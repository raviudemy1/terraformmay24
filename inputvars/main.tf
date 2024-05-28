provider "aws" {
 region = ""eu-west-2"
 }
resource "aws_instance" "example1" {
 ami           = var.amiid 
 instance_type = var.type
 }

resource "aws_instance" "example2" {
 ami           = var.amiid
 instance_type = var.type

variable "amiid" {
 default = "ami-053a617c6207ecc7b"
 }

variable "type" {
 defualt = t2.micro
 }
