module "vpc" {
  source               = "./modules/vpc"
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  cluster_name         = var.cluster_name
}

module "eks" {
  source = "./modules/eks"

  region                = var.region
  vpc_id                = module.vpc.vpc_id
  private_subnet_ids    = module.vpc.private_subnet_ids
  cluster_name          = var.cluster_name
  node_group_name       = var.node_group_name
  node_instance_type    = var.node_instance_type
  node_desired_capacity = var.node_desired_capacity
  node_max_capacity     = var.node_max_capacity
  node_min_capacity     = var.node_min_capacity
}

resource "helm_release" "mongodb" {
  name       = "my-mongodb"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "mongodb"
  version    = "15.6.13"
  namespace  = kubernetes_namespace.myapp.id

  set {
    name  = "architecture"
    value = "replicaset"
  }

  set {
    name  = "replicaCount"
    value = "1"
  }

  set {
    name  = "persistence.size"
    value = "5Gi"
  }

  depends_on = [ kubernetes_namespace.myapp ]

}

resource "kubernetes_namespace" "myapp" {
    metadata {
        name = "myapp"
    }
}