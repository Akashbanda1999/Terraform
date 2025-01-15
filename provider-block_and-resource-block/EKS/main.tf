module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "my-eks-cluster"
  cluster_version = "1.31" # Latest EKS version at the time of writing
  subnet_ids      = ["subnet-0c0ee504b24edba00","subnet-08d9250923457ef56","subnet-07cc631e7b8ef1d7f","subnet-0453783e8ac0b07f3","subnet-06299bc9fc7ea8f51"]
  vpc_id          = "vpc-0f8bace96ea512f5b"

  node_group_name = "node-group"
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
      key_name      = "north"
    }
  }
