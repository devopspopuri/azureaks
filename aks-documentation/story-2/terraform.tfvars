subscription_id = "7c99abad-5009-4361-999a-30a54b20cb1b"

# Resource Group Configuration
resource_group_name = "my-aks-rg-eastus"
location            = "East US"

# Virtual Network and Subnet Configuration
vnet_name             = "my-aks-vnet"
vnet_address_space    = "10.1.0.0/16"
subnet_name           = "my-aks-subnet"
subnet_address_prefix = "10.1.1.0/24"

# AKS Cluster Configuration
aks_cluster_name = "my-aks-cluster"
dns_prefix       = "my-aks-dns"

# Default Node Pool Configuration
default_node_pool_name = "defaultpool"
default_node_count = 2
default_vm_size = "Standard_DS3_v2"

# Auto-scaling Configuration
enable_auto_scaling = true
min_count           = 2
max_count           = 3

# Identity Configuration
identity_type = "SystemAssigned"

# Network Plugin Configuration
network_plugin    = "azure"
dns_service_ip    = "10.2.0.10"
docker_bridge_cidr = "172.17.0.1/16"
service_cidr      = "10.2.0.0/16"

# Tags
tags = {
  environment = "production"
  owner       = "my-team"
}
