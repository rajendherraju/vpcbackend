module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.0"

  name = var.vpc_name
  azs  = var.azs
  cidr = var.vpc_base_cidr

  enable_nat_gateway     = true
  single_nat_gateway     = true
  enable_dns_hostnames   = var.enable_dns_hostnames
  enable_dns_support     = var.enable_dns_support
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  private_subnets      = var.private_subnets
  private_subnet_tags  = var.private_subnet_tags
  public_subnets       = var.public_subnets
  public_subnet_tags   = var.public_subnet_tags
  database_subnets     = var.database_subnets
  database_subnet_tags = var.database_subnets_tags
  create_database_subnet_group = false # without this value again creating dbsubnetgroup which already exists
