variable "name" {
  description = "The name of the security group"
  type        = string
}

variable "description" {
  description = "A description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "ingress_from_port" {
  description = "The starting port for the ingress rule"
  type        = number
}
variable "region" {
description = "AWS Region"
type = string
}
variable "ingress_to_port" {
  description = "The ending port for the ingress rule"
  type        = number
}

variable "ingress_protocol" {
  description = "The protocol for the ingress rule"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks for the ingress rule"
  type        = list(string)
}

variable "egress_cidr_blocks" {
  description = "The CIDR blocks for the egress rule"
  type        = list(string)
}
