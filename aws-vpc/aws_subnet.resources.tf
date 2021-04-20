resource "aws_subnet" "test-a-private" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.AWS_REGION}a"
  tags = {
    Name = "test-a-private"
  }
}

resource "aws_subnet" "test-a-public" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "${var.AWS_REGION}a"
  map_public_ip_on_launch = "true" // allow to provision a public IP to instance on launching
  tags = {
    Name = "test-a-public"
  }
}

resource "aws_subnet" "test-c-private" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "${var.AWS_REGION}c"
  tags = {
    Name = "test-c-private"
  }
}

resource "aws_subnet" "test-c-public" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = "${var.AWS_REGION}c"
  map_public_ip_on_launch = "true" // allow to provision a public IP to instance on launching
  tags = {
    Name = "test-c-public"
  }
}

resource "aws_subnet" "test-d-private" {
  vpc_id            = aws_vpc.test.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "${var.AWS_REGION}d"
  tags = {
    Name = "test-d-private"
  }
}

resource "aws_subnet" "test-d-public" {
  vpc_id                  = aws_vpc.test.id
  cidr_block              = "10.0.6.0/24"
  availability_zone       = "${var.AWS_REGION}d"
  map_public_ip_on_launch = "true" // allow to provision a public IP to instance on launching
  tags = {
    Name = "test-d-public"
  }
}