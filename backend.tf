terraform {
  backend "s3" {
    bucket         = "terraform-state-bhanu-demo"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}