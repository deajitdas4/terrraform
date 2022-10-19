resource "aws_lb_listener" "terraform_listener" {
  load_balancer_arn = aws_lb.terraform_loadbalancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.terraform_targetgroup.arn
  }
}