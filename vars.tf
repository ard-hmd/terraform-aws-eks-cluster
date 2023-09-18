variable "cluster_config" {
  type = object({
    name    = string
    version = string
  })
  default = {
    name    = "eks-cluster"
    version = "1.27"
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
