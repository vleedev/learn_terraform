output "instance" {
  description = "The instance info after creating"
  value       = aws_lightsail_instance.test // The syntax: resource_type.resource_name.asset_key
}