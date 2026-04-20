output "consul_server_ips" {
  description = "Consul server private IPs"
  value       = module.consul_cluster.server_private_ips
}

output "consul_ui_url" {
  description = "Consul UI URL"
  value       = module.consul_cluster.ui_url
}

output "consul_cluster_tag" {
  description = "Auto-join tag for the cluster"
  value       = module.consul_cluster.cluster_tag
}
