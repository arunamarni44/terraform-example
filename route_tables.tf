resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "gw"
  }
}

# Create Routing Table - publicRT
resource "aws_route_table" "publicRT" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"                # Denote Internet 
    gateway_id = aws_internet_gateway.gw.id # Virtual Router
  }

  #route {
  #ipv6_cidr_block        = "::/0"
  #egress_only_gateway_id = aws_egress_only_internet_gateway.gw.id
  #}

  tags = {
    Name = "publicRT"
  }
}


# Create Routing Table - privateRT
resource "aws_route_table" "privateRT" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "privateRT"
  }
}


# Consider Route Table association with PublicRT and Public Subnet in ZoneA
resource "aws_route_table_association" "a"{
    subnet_id = aws_subnet.zoneAPublicSubnet.id
    route_table_id = aws_route_table.publicRT.id

}

# Consider Route Table association with PrivateRT and Private Subnet in ZoneA
resource "aws_route_table_association" "b"{
    subnet_id = aws_subnet.zoneAPrivateSubnet.id
    route_table_id = aws_route_table.privateRT.id

}

# Consider Route Table association with PublicRT and Public Subnet in ZoneB
resource "aws_route_table_association" "c"{
    subnet_id = aws_subnet.zoneBPublicSubnet.id
    route_table_id = aws_route_table.publicRT.id

}


# Consider Route Table association with PrivateRT and Private Subnet in ZoneB
resource "aws_route_table_association" "d"{
    subnet_id = aws_subnet.zoneBPrivateSubnet.id
    route_table_id = aws_route_table.privateRT.id
}