variable "region" {
  type        = string
  description = "The AWS region where the VPC will be created"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "A list of CIDR blocks for the public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "A list of CIDR blocks for the private subnets"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster"
}