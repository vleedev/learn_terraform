resource "aws_internet_gateway" "test-gateway" {
  vpc_id = aws_vpc.test.id
  tags = {
    Name = "test-vpc-gateway"
  }
}