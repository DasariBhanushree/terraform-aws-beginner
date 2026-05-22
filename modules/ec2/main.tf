resource "aws_instance" "my_first_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "terraform-ec2-module"
  }
}