resource "aws_launch_template" "terraform_instance_template" {
  name_prefix   = "terraform_instance_template"
  image_id      = "ami-062df10d14676e201"
  instance_type = "t2.micro"
  key_name = "a2"
  vpc_security_group_ids = [aws_security_group.allow_port_80_22.id]
  user_data = filebase64("user_data.sh")
}