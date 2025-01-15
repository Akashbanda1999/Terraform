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
  default     = ["subnet-0475abf0fd6adfce0","subnet-05d2056f662a6dc9f","subnet-01f99de82fab8114b"]
}
