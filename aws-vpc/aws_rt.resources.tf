resource "aws_route_table" "test-route" {
  vpc_id = aws_vpc.test.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test-gateway.id # Allow internet
  }
  tags = {
    Name = "test-route"
  }
}
# Add public subnets to route table
resource "aws_route_table_association" "test-a-public" {
  subnet_id      = aws_subnet.test-a-public.id
  route_table_id = aws_route_table.test-route.id
}
resource "aws_route_table_association" "test-c-public" {
  subnet_id      = aws_subnet.test-c-public.id
  route_table_id = aws_route_table.test-route.id
}
resource "aws_route_table_association" "test-d-public" {
  subnet_id      = aws_subnet.test-d-public.id
  route_table_id = aws_route_table.test-route.id
}