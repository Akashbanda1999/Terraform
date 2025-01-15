resource "aws_vpc" "eks_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "eks-vpc"
  }
}

resource "aws_subnet" "private_subnets" {
  count             = 3
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(aws_vpc.eks_vpc.cidr_block, 8, count.index)
  availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"][count.index]
  tags = {
    Name = "private-subnet-${count.index + 1}"
  }
}
