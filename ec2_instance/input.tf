variable "vpc-cidr_block" {
  description = "vpc cidr block value"
  
}

variable "subnet-cidr_block" {
  description = "subnet cidr block value"
  
}

variable "instance_type" {
  description = "ec2 instance type"
  type = string
}

variable "ami" {
  description = "ami id for ec2 instance"
  type = string
}