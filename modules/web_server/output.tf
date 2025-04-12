output "instances" {
  description = "Map of EC2 instances (only IDs)"
  value = {
    for key, instance in aws_instance.web :
    key => instance.id
  }
}
