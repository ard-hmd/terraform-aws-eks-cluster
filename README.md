# Module Terraform AWS EKS Cluster

This Terraform module provisions an AWS EKS Cluster with the necessary IAM roles and policies.

## Features

- Provisions an EKS Cluster with a specified name and version.
- Configures IAM roles and policies required for the EKS Cluster.
- Provides outputs for key information about the provisioned resources.

## Usage

To use this module in your Terraform configuration:

```hcl
module "eks_cluster" {
  source              = "github.com/ard-hmd/terraform-aws-eks-cluster.git"
  cluster_config      = {
    name    = "my-eks-cluster"
    version = "1.27"
  }
  public_subnets_ids  = ["subnet-x", "subnet-x"]
  private_subnets_ids = ["subnet-x", "subnet-x"]
}
```

## Variables

- `cluster_config`: Configuration for the EKS cluster, including its name and version. Default is `name = "eks-cluster"` and `version = "1.27"`.
- `public_subnets_ids`: The IDs of the public subnets in the existing VPC.
- `private_subnets_ids`: The IDs of the private subnets in the existing VPC.
- `resource_name_prefix`: Prefix for resource names. Default is `terraform-aws-eks-cluster-`.

## Outputs

- `eks_cluster_name`: The name of the EKS cluster.
- `eks_cluster_arn`: The Amazon Resource Name (ARN) of the EKS cluster.
- `eks_cluster_endpoint`: The endpoint for the EKS cluster.
- `eks_cluster_role_arn`: The ARN of the IAM role used by the EKS cluster.

