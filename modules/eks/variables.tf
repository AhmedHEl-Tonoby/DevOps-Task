variable "region" {
  type        = string
  description = "The AWS region where the EKS cluster will be created"
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC where the EKS cluster will be created"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "A list of private subnet IDs where the EKS worker nodes will be launched"
}

variable "cluster_name" {
  type        = string
  description = "The name of the EKS cluster"
}

variable "node_group_name" {
  type        = string
  description = "The name of the EKS node group"
}

variable "node_instance_type" {
  type        = string
  description = "The EC2 instance type for the EKS worker nodes"
}

variable "node_desired_capacity" {
  type        = number
  description = "The desired number of EKS worker nodes in the node group"
}

variable "node_max_capacity" {
  type        = number
  description = "The maximum number of EKS worker nodes in the node group"
}

variable "node_min_capacity" {
  type        = number
  description = "The minimum number of EKS worker nodes in the node group"
}
