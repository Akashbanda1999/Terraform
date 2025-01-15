module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.31
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  cluster_role_arn = module.eks_roles.iam_role_arn

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
      key_name      = "north"
    }
  }

  tags = {
    "Environment" = "Dev"
  }
}
