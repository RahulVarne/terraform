module "ec2_instance" {
source = "F:\cloud-blitz\modules\ec2-instance"
ami = "ami-0fff1b9a61dec8a5f"
instance_type = "t2.micro"
key_name = "my-key-pair"
region = "us-east-1"
instance_name = "module-ec2-instance"
}