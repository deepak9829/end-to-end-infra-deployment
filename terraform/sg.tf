resource "aws_security_group" "karpenter_devops_sg" {
  name        = "karpenter-devops-sg"
  description = "Security group for Karpenter DevOps NodePool"
  vpc_id      = module.network.vpc_id
  tags = {
    Name                          = "karpenter-devops-sg"
    "karpenter.sh/discovery"     = "DevOps"
  }
}

resource "aws_security_group_rule" "allow_all_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.karpenter_devops_sg.id
}

# Optional: Allow SSH ingress for debug (remove in production)
resource "aws_security_group_rule" "allow_ssh_ingress" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.karpenter_devops_sg.id
}

resource "aws_security_group_rule" "allow_ssh_ingress1" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.karpenter_devops_sg.id
}
