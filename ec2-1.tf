resource "aws_instance" "ec2-1" {
    ami = "ami-01eccbf80522b562b"
    vpc_security_group_ids = [aws_security_group.ec2.id]
    subnet_id = aws_subnet.private_subnet1.id
    key_name = "week10"
user_data = file("userdata.sh")
    instance_type = "t2.micro"
    tags = {
      Name = "webserver-1"
    }
}
resource "aws_instance" "ec2-2" {
    ami = "ami-01eccbf80522b562b"
    vpc_security_group_ids = [aws_security_group.ec2.id]
    subnet_id = aws_subnet.private_subnet2.id
    key_name = "week10"
    user_data = file("userdata.sh")
  instance_type = "t2.micro"
  tags = {
    Name= "webserver-2"
  }
}

  
