locals {
  private_app_subnet_ids = data.aws_subnets.private_app.ids
}
locals {
  namespace = "karpenter"
}

locals {
  name   = "DevOps-karpenter-iam-role"
}