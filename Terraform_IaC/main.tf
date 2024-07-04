resource "aws_instance" "web" {
  count         = 10
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Minsait_${count.index}"
  }
}