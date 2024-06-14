provider "aws" {
 region = "eu-west-2"
 }

resource "null_resource" "dummy" {
  provisioner = "local-exec" {
   command    = "touch MYFILE"
  }
}
