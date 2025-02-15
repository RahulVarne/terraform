provider "aws" {
    region = var.region

}
resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block
    tags = {
      name = var.vpc_name
    }
  
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
tags = merge({
Name = "${var.vpc_name}-public-subnet"
}, var.tags)
}

resource "aws_route_table" "route_table" {
vpc_id = aws_vpc.vpc.id
tags = merge({
Name = "${var.vpc_name}-public-rt"
}, var.tags)
}

resource "aws_route" "internet" {
route_table_id = aws_route_table.route_table.id
gateway_id = aws_internet_gateway.igw.id
destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "association" {
  count = length(var.public_subnet_cidr)
  subnet_id = aws_subnet.subnet[count.index].id 
  route_table_id = aws_route_table.route_table.id
}