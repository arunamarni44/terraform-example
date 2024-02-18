# Public Subnets are Internet facing which bring Outside via Router - Internet Gateway
# Private Subnets are Not directly exposed to Internet , which accomdates Database Instances

# RouteTable - Considers what routes the subnets can take
# PublicRT - For Public Subnets
# PrivateRT - For Private Subnets

# VPC - 192.168.0.0/16
# Name : main_vpc 
# 2 Zones [zoneA - Primary || zoneB - High Availbilty] 
# zoneAPublicSubnet  - 192.168.1.0/24
# zoneAPrivateSubnet - 192.168.2.0/24
# zoneBPublicSubnet  - 192.168.3.0/24
# zoneBPrivateSubnet - 192.168.4.0/24

resource "aws_subnet" "zoneAPublicSubnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.zoneAPublic_cidr

  tags = {
    Name = "zoneAPublicSubnet"
  }
}

resource "aws_subnet" "zoneAPrivateSubnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.zoneAPrivate_cidr

  tags = {
    Name = "zoneAPrivateSubnet"
  }
}

resource "aws_subnet" "zoneBPublicSubnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.zoneBPublic_cidr

  tags = {
    Name = "zoneBPublicSubnet"
  }
}

resource "aws_subnet" "zoneBPrivateSubnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.zoneBPrivate_cidr

  tags = {
    Name = "zoneBPrivateSubnet"
  }
}