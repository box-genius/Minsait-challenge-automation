provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key != "" ? var.aws_access_key : env.AWS_ACCESS_KEY_ID
  secret_key = var.aws_secret_key != "" ? var.aws_secret_key : env.AWS_SECRET_ACCESS_KEY
}

terraform {
  backend "s3" {
    bucket         = "projetos-terraform-status"
    key            = "Minsait/terraform.tfstate"
    region         = "us-east-1"
  }
}