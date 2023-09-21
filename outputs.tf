# EKS Cluster Name
output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.eks-cluster.name
}

# EKS Cluster ARN
output "eks_cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the EKS cluster"
  value       = aws_eks_cluster.eks-cluster.arn
}

# EKS Cluster Endpoint
output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = aws_eks_cluster.eks-cluster.endpoint
}

# EKS Cluster IAM Role ARN
output "eks_cluster_role_arn" {
  description = "The ARN of the IAM role used by the EKS cluster"
  value       = aws_iam_role.EKSClusterRole.arn
}
