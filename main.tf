module "ec2_instance" {
source        = "/mnt/f/Terraform/module/ec2.tf"
ami           = "ami-0583d8c7a9c35822c"
instance_type = "t2.micro"
region        = "us-east-1"
instance_name = "module-instance"
}