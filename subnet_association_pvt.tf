resource "aws_route_table_association" "association3" {
  subnet_id      = aws_subnet.terraform_subnet_pvt_1a.id
  route_table_id = aws_route_table.terraform_route_table_pvt.id
}

resource "aws_route_table_association" "association4" {
  subnet_id      = aws_subnet.terraform_subnet_pvt_1b.id
  route_table_id = aws_route_table.terraform_route_table_pvt.id
}