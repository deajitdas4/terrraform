resource "aws_route_table" "terraform_route_table_pvt" {
  vpc_id = aws_vpc.Terraform_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.terraform_nat.id
  }

  tags = {
    Name = "terraform_route_table_pvt"
  }
}