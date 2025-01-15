# Create a VPC
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "eks-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

  enable_nat_gateway = true

  tags = {
    "Name" = "eks-vpc"
  }
}

# IAM Roles for EKS Cluster
module "eks_roles" {
  source  = "terraform-aws-modules/iam/aws"
  version = "5.17.0"

  create_eks = true

  eks_cluster_role_name = "eks-cluster-role"
  eks_cluster_role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  ]
}

# Create EKS Cluster
module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.8.1"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.31"

  subnets = module.vpc.private_subnets
  vpc_id  = module.vpc.vpc_id

  cluster_role_arn = module.eks_roles.iam_role_arn

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
      key_name      = "north" # Add your SSH key pair name
    }
  }

  tags = {
    "Environment" = "Dev"
  }
}

# Outputs
output "eks_cluster_name" {
  value = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "eks_cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}
