module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.VPC_NAME
  cidr = var.VpcCIDR

  azs             = [var.Zone1, var.Zone2, var.Zone3]
  private_subnets = [var.PrivSub1CIDR, var.PrivSub2CIDR, var.PrivSub3CIDR]
  public_subnets  = [var.PubSub1CIDR, var.PubSub2CIDR, var.PubSub3CIDR]

    # Assign specific names to your public subnets (matches the order above)
  public_subnet_names = [
    "${var.PROJECT}-public-subnet-1",
    "${var.PROJECT}-public-subnet-2",
    "${var.PROJECT}-public-subnet-3"
  ]

  # Assign specific names to your private subnets (matches the order above)
  private_subnet_names = [
    "${var.PROJECT}-private-subnet-1",
    "${var.PROJECT}-private-subnet-2",
    "${var.PROJECT}-private-subnet-3"
  ]

  enable_nat_gateway      = true
  single_nat_gateway      = true
  enable_dns_hostnames    = true
  enable_dns_support      = true
  map_public_ip_on_launch = true


  vpc_tags = {
    Name = var.VPC_NAME
  }

  # Global tags applied to everything (DO NOT put "Name" here)
  tags = {
    Project = var.PROJECT
  }
}
