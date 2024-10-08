module "my_security_group" {
  source              = ""
  name                = "module-sg"
  description         = "My Security Group"
  vpc_id              = "vpc-0fc4979c3340f5dfe" 
  ingress_from_port   = 80
  ingress_to_port     = 80
  ingress_protocol     = "tcp"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_cidr_blocks  = ["0.0.0.0/0"]
}