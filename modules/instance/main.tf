provider "aws" {
 region = "eu-west-2"
 }
resource "aws_instance" "example" {
 ami           = var.amiid
 instance_type = var.type
 }
