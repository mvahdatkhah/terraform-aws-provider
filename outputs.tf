output "aws_ami_id" {
  value = data.aws_ami.ubuntu.id
}

output "ec2_public_ip" {
  value = aws_instance.myapp-server.public_ip
}