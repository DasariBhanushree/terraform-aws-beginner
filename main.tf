provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "my_first_server" {
  ami           = "ami-0236922087fa98b6e"
  instance_type = var.instance_type
  key_name = aws_key_pair.terraform_key.key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]

  tags = {
    Name = "terraform-server-updated"
  }

user_data = <<-EOF
#!/bin/bash
yum update -y
yum install docker -y
systemctl start docker
systemctl enable docker
EOF

}

resource "aws_security_group" "my_security_group" {
  name = "terraform-security-group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
