resource "aws_security_group" "allow_ssh-se-1" {
  name                      = "allow_ssh-se-1"
  description               = "Allow SSH inbound traffic"

  ingress {
    description             = "SSH from VPC"
    from_port               = 22
    to_port                 = 22
    protocol                = "tcp"
    cidr_blocks             = var.allowable_ips
  }

  tags = {
    Name                    = "allow_ssh-se-1"
  }
}

resource "aws_security_group" "allow_ssh-ue-1" {
  provider                  = aws.us-east-1
  name                      = "allow_ssh-ue-1"
  description               = "Allow SSH inbound traffic"

  ingress {
    description             = "SSH from VPC"
    from_port               = 22
    to_port                 = 22
    protocol                = "tcp"
    cidr_blocks             = var.allowable_ips
  }

  tags = {
    Name                    = "allow_ssh-ue-1"
  }
}