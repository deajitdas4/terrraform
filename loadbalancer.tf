resource "aws_lb" "terraform_loadbalancer" {
  name               = "terraformloadbalancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_port_80.id]
  subnets            = [aws_subnet.terraform_subnet_pub_1a.id,aws_subnet.terraform_subnet_pub_1b.id]

  #enable_deletion_protection = true

  tags = {
    Environment = "production"
  }
}