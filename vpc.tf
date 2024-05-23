resource "aws_vpc" "private-cloud" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "department-subnet" {
  vpc_id     = aws_vpc.private-cloud.id
  cidr_block = "10.0.1.0/24"
}
