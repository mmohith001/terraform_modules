output "transformation-service-instance_ip" {
  description = "transformation-service ec2 instance ip address"
  value = aws_instance.transformation-service.private_ip
}

output "buildingsketch-instance_ip" {
  description = "buildingsketch ec2 instance ip address"
  value = aws_instance.buildingsketch.private_ip
}