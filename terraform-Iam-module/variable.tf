variable "environment" {
 description = "Please choose environment prod / dev "
}

variable "users" {
 type = list(string)
 description = "Please enter the user list in [ ] seprated by commas and quotation / example [\"a\",\"b\"]"
}	

