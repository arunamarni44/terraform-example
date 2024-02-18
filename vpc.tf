# VPC - Virtual Private Cloud
# Acts a Private Cloud over AWS Public Cloud
# Consider Network Setup for Cloud Resources

# VPC - Regional [Ohio(us-east-2)]
# VPC - Subnets [Public Subnet || Private Subnet]



resource "aws_vpc" "main_vpc" {
  
  cidr_block       = var.vpc_fullcidr

  instance_tenancy = "default"

  enable_dns_support = true
  enable_dns_hostnames= true


  tags = {
    Name = "main_vpc"
  }
}