provider "aws" {
 region = "eu-west-2"
 }
# create s3 bucket to store remote state file #
resource "aws_s3_bucket" "example" {
 bucket = "prasanna-s3-remotestate"
 }
# create a dynamodb table for locking the state file#
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
 name           = "terraform-state-lock-dynamo"
 hash-key       = "LockID"
 read_capacity  = 20
 write_capacity = 20
 attribute {
  name = "LockID"
  type = "S"
  }
  tags = {
   Name = "DynamoDB Terraform state Lock Table"
  }
 } 














