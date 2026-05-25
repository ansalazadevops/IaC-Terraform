# Create VCP
resource "aws_vpc" "vpc" {
    cidr_block           = "${var.vpc-cidr}"
    instance_tenancy     = "default"
    enable_dns_hostnames = true
    
    tags = {
        Name = "cdp-vpc"
    }
}

# Create Internet Gateway and attach it to the VPC
resource "aws_internet_gateway" "internet-gateway" {
    vpc_id  = aws_vpc.vpc.id

    tags = {
        Name = "cpd-igw"
    }
}

# Create Public Subnet 1
resource "aws_subnet" "public-subnet-1" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = "${var.public-subnet-1-cidr}"
    availability_zone       = "${var.availability-zone-1}"
    map_public_ip_on_launch = true

    tags = {
        Name = "cdp-public-subnet-1"
    }    
}

# Create Route Table and add Public Route
resource "aws_route_table" "public-route-table" {
    vpc_id          = aws_vpc.vpc.id

    route {
        cidr_block  = "0.0.0.0/0"
        gateway_id  = aws_internet_gateway.internet-gateway.id
    }

    tags = {
        Name = "cdp-public-rtb"
    }
}

# Associate the 'Public Subnet 1' to the 'Public Route Table'
resource "aws_route_table_association" "public-subnet-1-route-table-association" {
    subnet_id       = aws_subnet.public-subnet-1.id
    route_table_id  = aws_route_table.public-route-table.id
}
