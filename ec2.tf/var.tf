variable "ami" {
description = "The ID of the AMI to use for the EC2 instance"
type = string
}
variable "instance_type" {
description = "Type of EC2 instance "
type = string
default = "t2.micro"
}

variable "region" {
description = "AWS Region"
type = string
}

variable "instance_name" {
description = "AWS name"
type = string
}