variable "region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "my-eks-cluster"
}

variable "vpc_id" {
  description = "The VPC ID for the EKS cluster"
  default     = "vpc-036309236ea8db490"
}

variable "subnets" {
  description = "The list of subnets for the EKS cluster"
  type        = list(string)
  default     = ["subnet-0475abf0fd6adfce0","subnet-05d2056f662a6dc9f","subnet-01f99de82fab8114b"]
}