output "instance_public_ips" {
  value = [for instance in aws_instance.example : instance.public_ip]
}