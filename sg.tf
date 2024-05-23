resource "aws_security_group" "web-server" {
  name   = "web-server-sg"
  vpc_id = aws_vpc.private-cloud.id

  ingress {
    from_port   = var.port-http
    to_port     = var.port-http
    protocol    = "tcp"
    cidr_blocks = [var.cidr-block-anywhere]
  }

  ingress {
    from_port   = var.port-https
    to_port     = var.port-https
    protocol    = "tcp"
    cidr_blocks = [var.cidr-block-anywhere]
  }

  ingress {
    from_port   = var.port-ssh
    to_port     = var.port-ssh
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr_block]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr-block-anywhere]
  }
}
