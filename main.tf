provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
}

module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "latest_ami" {
  value = data.aws_ami.amazon_linux.id
}