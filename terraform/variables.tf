variable "name" {}
variable "cluster_name" {}
variable "cluster_version" {}
variable "vpc_cidr" {}
variable "aws_region" {}
variable "azs" {
  type = list(string)
}
variable "public_subnet_cidrs" {
  type = list(string)
}
variable "private_app_subnet_cidrs" {
  type = list(string)
}
variable "private_infra_subnet_cidrs" {
  type = list(string)
}
variable "private_rds_subnet_cidrs" {
  type = list(string)
}
variable "private_redis_subnet_cidrs" {
  type = list(string)
}
variable "private_mongodb_subnet_cidrs" {
  type = list(string)
}
variable "tags" {
  type    = map(string)
  default = {}
}