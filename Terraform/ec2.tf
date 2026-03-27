
resource "aws_instance" "devops-project" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t2.micro" # Free-tier eligible instance type

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
  aws_security_group.web_traffic_sg.id
  ]

  key_name = "project-key"

  tags = {
    Name = "TerraformEC2Instance"
  }
}