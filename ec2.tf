data "aws_ami" "win22-image" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base-*"]
  }
}

resource "aws_instance" "web-server" {
  ami                    = data.aws_ami.win22-image.image_id
  instance_type          = var.instance-type
  vpc_security_group_ids = [aws_security_group.web-server.id]
  subnet_id              = aws_subnet.department-subnet.id

  associate_public_ip_address = true
}
