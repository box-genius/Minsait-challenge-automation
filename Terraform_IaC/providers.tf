provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

terraform {
  backend "s3" {
    bucket         = "projetos-terraform-status"
    key            = "Minsait/terraform.tfstate"
    region         = "us-east-1"
  }
}