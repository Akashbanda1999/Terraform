output "cluster_id" {
  description = "The EKS cluster ID"
  value       = module.eks.cluster_id
}

output "node_group_arn" {
  description = "The ARN of the node group"
  value       = module.eks.node_groups["eks_nodes"].node_group_arn
}