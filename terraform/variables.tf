variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Consul cluster name"
  type        = string
  default     = "consul-cluster"
}

variable "num_servers" {
  description = "Number of Consul server nodes"
  type        = number
  default     = 3
}

variable "num_clients" {
  description = "Number of Consul client nodes"
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "ami_id" {
  description = "AMI ID with Consul installed"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for cluster nodes"
  type        = list(string)
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "production"
}
