output "instance_public_ips" {
  value = [for instance in aws_instance.web : instance.public_ip]
}

output "instance_ids" {
  value = [for instance in aws_instance.web : instance.id]
}

output "private_key" {
  value     = tls_private_key.example.private_key_pem
  sensitive = true
}