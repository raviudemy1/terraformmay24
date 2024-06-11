provider "aws" {
 region = "eu-west-2"
 }

variable "con" {
 default = "0"
 }

resource "aws_iam_user" "example2" {
 count = var.con ? 1:2 # expression ? <true_value> : <false_value>
 name  = "example2"
 }
