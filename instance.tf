resource "aws_instance" "Jumpserver" {
  ami           = "ami-062df10d14676e201"
  key_name      = "a2"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.terraform_subnet_pub_1b.id
  vpc_security_group_ids = [aws_security_group.allow_port_80_22.id]
  
  
  tags = {
    Name = "jumpserver"
  }
}

resource "aws_instance" "my-machine" {
  # Creates four identical aws ec2 instances
  count = 2     
  
  # All four instances will have the same ami and instance_type
  ami = "ami-062df10d14676e201"
  key_name      = "a2"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.terraform_subnet_pvt_1b.id
  vpc_security_group_ids = [aws_security_group.allow_port_80_22.id]
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "my-machine-${count.index}"
  }
}