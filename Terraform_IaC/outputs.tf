output "instance_ids" {
  description = "IDs das instâncias criadas"
  value       = aws_instance.web[*].id
}

output "instance_public_ips" {
  description = "Endereços IP públicos das instâncias"
  value       = aws_instance.web[*].public_ip
}

output "docker_versions" {
  value = [
    for idx in range(10) : {
      instance_id = aws_instance.web[idx].id
      public_ip   = aws_instance.web[idx].public_ip
      docker_version = null_resource.check_docker[idx].provisioner[0].output
    }
  ]
}