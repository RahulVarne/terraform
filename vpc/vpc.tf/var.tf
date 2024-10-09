variable "region" {
  description = "region for the vpc"
  type = string
}
variable "cidr_block" {
  description = "cidr_block for aws_subnet"
  type = string
}
variable "public_subnet_count" {
  description = "no of subnets"
  type = number
}
variable "public_subnet_cidr" {
  description = "cidr_block"
  type = list(string)
}
variable "availability_zone" {
  description = "availability zone for the subnet"
  type = list(string)
}

