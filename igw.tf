resource "aws_internet_gateway" "terraform_igw" {
  vpc_id = aws_vpc.Terraform_VPC.id

  tags = {
    Name = "terraform_igw"
  }
}