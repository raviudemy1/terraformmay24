provider "aws" {
 region = "eu-west-2"
 }

resource "aws_instance" "example" {
 ami           = "ami-0b9932f4918a00c4f"
 instance_type = "t2.micro"
 key_name      = "Lakshmi"

provisioner "local-exec" {
 command = "echo 'while true; do echo hi-students; sleep 5; done' > myscript.sh"
 }

provisioner "file" {
 source      = "myscript.sh"
 destination = "/tmp/myscript.sh"
 }

provisioner "remote-exec" {
 inline = [
   "chmod +x /tmp/myscript.sh",
   "nohup /tmp/myscript.sh 2>&1 &",
   ]
 }
connection {
  type        = "ssh"
  user        = "ubuntu"
  private_key = file("Lakshmi.pem")
  host        = self.public_ip
 }
}
 

