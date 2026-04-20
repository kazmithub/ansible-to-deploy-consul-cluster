# Consul ACL Configuration
# Enable ACL system for secure cluster access

acl {
  enabled        = true
  default_policy = "deny"
  down_policy    = "extend-cache"

  tokens {
    initial_management = "CHANGE_ME_TO_SECURE_TOKEN"
    agent              = "CHANGE_ME_TO_AGENT_TOKEN"
  }
}

# TLS Configuration
tls {
  defaults {
    ca_file   = "/etc/consul.d/certs/consul-agent-ca.pem"
    cert_file = "/etc/consul.d/certs/dc1-server-consul-0.pem"
    key_file  = "/etc/consul.d/certs/dc1-server-consul-0-key.pem"

    verify_incoming = true
    verify_outgoing = true
  }

  internal_rpc {
    verify_server_hostname = true
  }
}

# Auto-encrypt allows clients to get TLS certs from servers
auto_encrypt {
  allow_tls = true
}
