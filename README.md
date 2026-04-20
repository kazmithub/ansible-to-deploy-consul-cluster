# Consul Cluster Deployment

Multi-node HashiCorp Consul cluster deployment with Ansible (primary) and Terraform (alternative).

## Architecture

```
                    Consul Cluster
        +--------+--------+--------+
        |        |        |        |
     Server1  Server2  Server3  (Raft consensus)
        |        |        |
        +--------+--------+
              |
        +-----+-----+
        |           |
     Client1     Client2
     (Services)  (Services)

Security: ACL (deny-by-default) + mTLS
Discovery: Auto-join via cloud tags
```

## Key Features

- **Multi-node Cluster** - 3 server + 2 client architecture with Raft consensus
- **Ansible Automation** - Idempotent playbooks for cluster lifecycle
- **Terraform Alternative** - AWS deployment option in `terraform/` directory
- **ACL Security** - Deny-by-default access control
- **mTLS** - Mutual TLS for all inter-node communication
- **Service Mesh** - Consul Connect for service-to-service networking
- **Vault Integration** - Secrets management with Ansible Vault

## Deployment Options

### Option 1: Ansible (Local/Vagrant)
```bash
vagrant up
ansible-playbook -i inventory site.yml
```

### Option 2: Terraform (AWS)
```bash
cd terraform/
terraform init && terraform apply
```

## Project Structure

```
.
├── ansible/              # Ansible playbooks and roles
│   ├── roles/
│   │   ├── bootstrap/    # Base system configuration
│   │   ├── servers/      # Consul server setup
│   │   └── clients/      # Consul client setup
│   └── group_vars/       # Variable definitions
├── terraform/            # AWS Terraform deployment
├── consul-acl-config.hcl # ACL and TLS configuration
└── Vagrantfile           # Local development environment
```

## License

MIT
