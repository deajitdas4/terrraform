resource "aws_autoscaling_group" "terraform_autoscalling" {

  desired_capacity   = 2
  max_size           = 3
  min_size           = 2
  vpc_zone_identifier = [aws_subnet.terraform_subnet_pub_1a.id]
  target_group_arns = [aws_lb_target_group.terraform_targetgroup.arn]
  
  launch_template {
    id      = "${aws_launch_template.terraform_instance_template.id}"
    version = "$Latest"
  }
}