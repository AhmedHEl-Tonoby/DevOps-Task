variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "main-eks-cluster"
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  default     = "main-node-group"
}

variable "node_instance_type" {
  description = "Instance type for the EKS nodes"
  default     = "t3.medium"
}

variable "node_desired_capacity" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "node_max_capacity" {
  description = "Maximum number of worker nodes"
  default     = 6
}

variable "node_min_capacity" {
  description = "Minimum number of worker nodes"
  default     = 1
}
