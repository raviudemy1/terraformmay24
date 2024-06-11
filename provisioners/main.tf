provider "aws" {
 region = "eu-west-2"
 }

resource "aws_instance" "example" {
 ami            = "ami-053a617c6207ecc7b"
 instance_type  = "t2.micro"

 provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt
   }
 }
