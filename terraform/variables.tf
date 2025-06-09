variable "name" {}
variable "vpc_cidr" {}
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
