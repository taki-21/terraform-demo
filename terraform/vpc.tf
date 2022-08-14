# VPC
resource "aws_vpc" "demo" {
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "demo-vpc"
  }
}

# Subnet
resource "aws_subnet" "demo_1a" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "192.168.1.0/25"
  availability_zone = "ap-northeast-1a"
}
