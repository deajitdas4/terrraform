resource "aws_lb_target_group" "terraform_targetgroup" {
  name     = "terraformtargetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Terraform_VPC.id
}