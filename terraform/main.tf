# Consul Cluster on AWS - Terraform Alternative
# Deploys a 3-node Consul cluster using EC2 instances

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "consul_cluster" {
  source  = "hashicorp/consul/aws"
  version = "0.11.0"

  cluster_name  = var.cluster_name
  num_servers   = var.num_servers
  num_clients   = var.num_clients
  instance_type = var.instance_type

  ami_id    = var.ami_id
  vpc_id    = var.vpc_id
  subnet_ids = var.subnet_ids

  enable_acls = true
  enable_tls  = true

  tags = {
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}
