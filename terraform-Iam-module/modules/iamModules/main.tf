provider "aws"{
  region="eu-west-2"
  }
  
  resource "aws_iam_user" "prod"{
      count = var.environment == "prod" ? length(var.users) : 0
      name  = "${var.users[count.index]}_prod"
	  }
 
  resource "aws_iam_user" "dev"{
      count = var.environment == "dev" ? length(var.users) : 0
      name  = "${var.users[count.index]}_dev"
          }

