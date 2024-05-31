provider "aws" {
 region = "eu-west-2"
 }
resource "aws_eip" "ip" {
 instance = var.instanceid
 }
 
