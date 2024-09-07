#In this scipt we will be creating a vpc called my-vpc, and creating a subnet called called my-subnet and in that subnet we will creating 2 ec2 insatnces in us-east-1a zone

resource "aws_vpc" "my-vpc" {
  cidr_block       = var.vpc-cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "my-subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = var.subnet-cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name = "my-subnet"
  }
}

resource "aws_instance" "transformation-service" {
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id = aws_subnet.my-subnet.id
  tags = {
    Name = "transformation-service"
  }
  
}

resource "aws_instance" "buildingsketch" {
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id = aws_subnet.my-subnet.id
  tags = {
    Name = "buildingsketch"
  }
  
}
