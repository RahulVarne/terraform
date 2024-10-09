provider "aws" {
  

  region     = "us-east-1"
}

resource "aws_instance" "this" {
ami = var.ami
instance_type = var.instance_type

tags = {
Name = var.instance_name
}
}