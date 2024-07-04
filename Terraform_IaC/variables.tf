variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  default     = ""
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID da AMI para a instância"
  type        = string
  default     = "ami-04a81a99f5ec58529"
}
 
variable "instance_type" {
  description = "Tipo da instância"
  type        = string
  default     = "t2.micro"
}