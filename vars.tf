variable "cluster_config" {
  description = "Configuration for the EKS cluster, including its name and version."
  type = object({
    name    = string
    version = string
  })
  default = {
    name    = "eks-cluster"
    version = "1.28"
  }
}

variable "public_subnets_ids" {
  description = "The IDs of the public subnets in the existing VPC"
  type        = list(string)
}

variable "private_subnets_ids" {
  description = "The IDs of the private subnets in the existing VPC"
  type        = list(string)
}

variable "resource_name_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "terraform-aws-eks-cluster-"
}
