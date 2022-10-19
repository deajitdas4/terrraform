resource "aws_route_table_association" "association1" {
  subnet_id      = aws_subnet.terraform_subnet_pub_1a.id
  route_table_id = aws_route_table.terraform_route_table_pub.id
}

resource "aws_route_table_association" "association2" {
  subnet_id      = aws_subnet.terraform_subnet_pub_1b.id
  route_table_id = aws_route_table.terraform_route_table_pub.id
}