resource "aws_subnet" "terraform_subnet_pub_1a" {
  vpc_id     = aws_vpc.Terraform_VPC.id
  cidr_block = "10.10.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = "true"
  
  tags = {
    Name = "terraform_subnet_pub_1a"
  }
}

resource "aws_subnet" "terraform_subnet_pub_1b" {
  vpc_id     = aws_vpc.Terraform_VPC.id
  cidr_block = "10.10.2.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = "true"
  
  tags = {
    Name = "terraform_subnet_pub_1b"
  }
}

resource "aws_subnet" "terraform_subnet_pvt_1a" {
  vpc_id     = aws_vpc.Terraform_VPC.id
  cidr_block = "10.10.3.0/24"
  availability_zone = "ap-south-1a"
  
  tags = {
    Name = "terraform_subnet_pvt_1a"
  }
}

resource "aws_subnet" "terraform_subnet_pvt_1b" {
  vpc_id     = aws_vpc.Terraform_VPC.id
  cidr_block = "10.10.4.0/24"
  availability_zone = "ap-south-1b"
  
  tags = {
    Name = "terraform_subnet_pvt_1b"
  }
}

