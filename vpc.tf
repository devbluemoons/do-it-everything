# vpc 생성
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main"
  }
}

# 서브넷 생성 (public)
resource "aws_subnet" "public01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/20"

  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "public_subnet01"
  }
}

resource "aws_subnet" "public02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.16.0/20"

  availability_zone = data.aws_availability_zones.available.names[1]

  tags = {
    Name = "public_subnet02"
  }
}
