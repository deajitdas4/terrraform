resource "aws_security_group" "allow_port_80" {
  name        = "allow80"
  description = "Allow port 80"
  vpc_id      = aws_vpc.Terraform_VPC.id

  ingress {
    description      = "port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_port_80"
  }
}

resource "aws_security_group" "allow_port_80_22" {
  name        = "allowport80"
  description = "Allow port 80"
  vpc_id      = aws_vpc.Terraform_VPC.id

  ingress {
    description      = "port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    description      = "port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_port_80_22"
  }
}
