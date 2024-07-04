resource "aws_instance" "web" {
  count         = 10
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name

  tags = {
    Name = "Minsait_${count.index}"
  }
}