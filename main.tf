provider "aws" {
 region = "eu-west-2"
 }
data "aws_availability_zones" "example" {
 state = "available"
 }
data "aws_instances" "test"  {
 filter {
  name = "instance-type"
  values = ["t2.micro","t2.small"]
 }
 instance_state_names = ["running" "stopped"]
}


































