resource "aws_eks_cluster" "eks_cluster" {
  name     = "my-eks-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids         = aws_subnet.private_subnets[*].id
    security_group_ids = [aws_security_group.eks_sg.id]
  }

  tags = {
    Name = "my-eks-cluster"
  }
}
