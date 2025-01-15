variable "region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "my-eks-cluster"
}

variable "vpc_id" {
  description = "The VPC ID for the EKS cluster"
  default     = "vpc-0f8bace96ea512f5b"
}

variable "subnets" {
  description = "The list of subnets for the EKS cluster"
  type        = list(string)
  default     = ["subnet-0c0ee504b24edba00","subnet-08d9250923457ef56","subnet-07cc631e7b8ef1d7f","subnet-0453783e8ac0b07f3","subnet-06299bc9fc7ea8f51"]
}
