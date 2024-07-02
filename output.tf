output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "jump_server_public_ip" {
  value = aws_instance.jump_server.public_ip
}
