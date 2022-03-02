resource "aws_security_group" "allow_tls" {
  name        = "sid_security_Group"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-001790fa349af734c"

  ingress {
    description      = var.description
    from_port        = var.ssh_from_port
    to_port          = var.ssh_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

   ingress {
    description      = var.description
    from_port        = var.http_from_port
    to_port          = var.http_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  egress {
    from_port        = var.efp
    to_port          = var.etp
    protocol         = var.e_protocol
    cidr_blocks      = var.cidr
  }

  tags = {
    Name = "Sid-SG"
  }
}