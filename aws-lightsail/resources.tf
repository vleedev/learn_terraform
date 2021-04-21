resource "random_string" "suffix" {
  length  = 8
  special = false
}
# Create a new Lightsail Instance
resource "aws_lightsail_instance" "test" {
  name              = "test-${random_string.suffix.result}"
  availability_zone = data.aws_availability_zones.available.names[0]
  blueprint_id      = "ubuntu_18_04"
  bundle_id         = "nano_2_0"
  tags = {
    foo = "bar"
  }
}