provider "aws" {
    region = "us-east-1"
}
resource "aws_vpc" default" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "demo_vpc"
  }
}