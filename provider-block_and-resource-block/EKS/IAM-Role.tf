module "eks_roles" {
  source  = "terraform-aws-modules/iam/aws"
  version = "latest"

  eks_cluster_role_name = "eks-cluster-role"
  eks_cluster_role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
    "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  ]
}
