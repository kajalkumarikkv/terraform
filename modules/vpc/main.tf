resource "aws_vpc" "main-infra" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main-infra"
  }
}

resource "aws_subnet" "Frontend-subnet" {
  vpc_id            = aws_vpc.main-infra.id
  cidr_block        = "10.0.1.0/24"
  
  tags = {
    Name = "Frontend-subnet"
  }
}

resource "aws_subnet" "backend-subnet" {
  vpc_id            = aws_vpc.main-infra.id
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "backend-subnet"
  }
    
}