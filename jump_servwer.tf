resource "aws_instance" "jump_server" {
  ami             = "ami-0f58b397bc5c1f2e8" # Amazon ubuntu AMI
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public.id
  security_groups = [aws_security_group.jump_server_sg.name]

  key_name = "my-key-pair"

  tags = {
    Name = "jump-server"
  }
}
