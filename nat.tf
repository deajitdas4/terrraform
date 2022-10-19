resource "aws_nat_gateway" "terraform_nat" {
  connectivity_type = "private"
  subnet_id = aws_subnet.terraform_subnet_pub_1a.id
}
