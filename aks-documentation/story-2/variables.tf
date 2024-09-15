variable "subscription_id" {
    type = string
    description = "Your azure account subscription_id"
}

variable "resource_group_name" {
    type = string
    description = "The name of resource group"
    default = "aks-resource-group"
}

variable "location" {
    type = string
    description = "The location of where resources will be created"
    default = "East US"
}

variable "vnet_name" {
    type = string
    description = "The name of virtual network"
    default = "aks-vnet"
}

variable "vnet_address_space" {
    type = string
    description = "The address space for the virtual network"
    default = "10.0.0.1/16"
}

variable "subnet_name" {
    type = string
    description = "The name of subnet"
    default = "aks-subnet"
}

variable "subnet_address_prefix" {
    type = string
    description = "The address prefix for subnet"
    default = "10.0.1.0/24"
}

variable "aks_cluster_name" {
    type = string
    description = "The name of aks cluster"
    default = "aks-cluster"
}

variable "dns_prefix" {
    type = string
    description = "The dns prefix for the aks cluster's api server"
    default = "aks-cluster"
}

variable "default_node_pool_name" {
    type = string
    description = "name of default node pool"
    default = "defaultnode"
}

variable "default_node_count" {
    type = number
    description = "Enter node count for default node pool"
    default = 2
}

variable "default_vm_size" {
    type = string
    description = "The size of virtual machines for the default node pool"
    default = "Standard_DS2_v2"
}

variable "enable_auto_scaling" {
    type = bool
    description = "Enable or disable auto-scaling of nodes."
    default     = true
}

variable "min_count" {
  type        = number
  description = "Minimum number of nodes for auto-scaling."
  default     = 1
}

variable "max_count" {
  type        = number
  description = "Maximum number of nodes for auto-scaling."
  default     = 5
}

variable "identity_type" {
  type        = string
  description = "The type of identity used for the AKS cluster."
  default     = "SystemAssigned"
}

variable "network_plugin" {
  type        = string
  description = "The network plugin used for the AKS cluster."
  default     = "azure"
}

variable "dns_service_ip" {
  type        = string
  description = "The IP address for the DNS service."
  default     = "10.2.0.10"
}

variable "docker_bridge_cidr" {
  type        = string
  description = "The CIDR for the Docker bridge."
  default     = "172.17.0.1/16"
}

variable "service_cidr" {
  type        = string
  description = "The CIDR for the Kubernetes service."
  default     = "10.2.0.0/16"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the AKS cluster."
  default     = {
    environment = "dev"
  }
}

