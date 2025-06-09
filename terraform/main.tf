provider "aws" {
  profile = "Devops-Test"
}
module "network" {
  source = "git::https://github.com/deepak9829/aws-terraform-modules.git//modules/network?ref=master"

  name                        = var.name
  vpc_cidr                    = var.vpc_cidr
  azs                         = var.azs
  public_subnet_cidrs         = var.public_subnet_cidrs
  private_app_subnet_cidrs    = var.private_app_subnet_cidrs
  private_infra_subnet_cidrs  = var.private_infra_subnet_cidrs
  private_rds_subnet_cidrs    = var.private_rds_subnet_cidrs
  private_redis_subnet_cidrs  = var.private_redis_subnet_cidrs
  private_mongodb_subnet_cidrs= var.private_mongodb_subnet_cidrs
  tags                        = var.tags
}
