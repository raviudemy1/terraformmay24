provider "aws" {
 region = "eu-west-2"
 }
data "aws_availability_zones" "example" {
 state = "available"
 }

