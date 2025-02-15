module "vpc" {
  source = "vpc/vpc"

  vpc_name = "my vpc"
  region   = "us-east-1"
  cidr_block = "10.0.0.0/16"

  public_subnet_count = 3
  public_subnet_cidr  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  availability_zone   = ["us-east-1a", "us-east-1b", "us-east-1c"]

  tags = {
    Environment = "dev"
    Team        = "DevOps"
  }
}
