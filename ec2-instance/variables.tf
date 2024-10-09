variable "ami" {
description = "The ID of the AMI to use for the EC2 instance"
type = string
}
variable "instance_type" {
description = "type of instance"
type = string
default = "t2.micro"
}
variable "key_name" {
description = "Key pair name to access EC2 instance"
type = string
}
variable "region" {
description = "AWS Region"
type = string
}
variable "instance_name" {
description = "Name tag for the instance"
type = string
}