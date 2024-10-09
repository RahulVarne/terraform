provider "aws" {
    region = var.region
    
}
resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
  
}
resource "aws_subnet" "subnet" {
  #vpc_id = aws_vpc.vpc.id = vpc-adkjedfnsj
  vpc_id = aws_vpc.vpc.id 
  count = var.public_subnet_count 
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = element(var.availability_zone, count.index)
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}