data "aws_subnets" "private_app" {
  filter {
    name   = "tag:Name"
    values = [
      "DevOps-private-app-ap-south-1a",
      "DevOps-private-app-ap-south-1b",
      "DevOps-private-app-ap-south-1c"
    ]
  }

  filter {
    name   = "vpc-id"
    values = [module.network.vpc_id]
  }
}
provider "aws" {
  region = "us-east-1" # Public ECR is only available in us-east-1
  alias  = "ecrpublic"
}

data "aws_ecrpublic_authorization_token" "token" {
  provider = aws.ecrpublic
}

# Get EKS cluster details
data "aws_eks_cluster" "this" {
  name = module.eks.cluster_name
  depends_on = [ module.eks ]
}

data "aws_eks_cluster_auth" "this" {
  name = module.eks.cluster_name
  depends_on = [ module.eks ]
}