provider "aws"{
  region="eu-west-2"
  }
 module "iAMModule" {
  source = "./modules/iamModules"
  environment = var.environment
  users = var.users
  }
