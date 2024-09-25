provider "azurerm" {
    features {}
    subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "aks_rg" {
    name =  var.resource_group_name
    location = var.location
}

resource "azurerm_virtual_network" "aks_vnet" {
    name = var.vnet_name
    address_space = [var.vnet_address_space]
    location = azurerm_resource_group.aks_rg.location
    resource_group_name = azurerm_resource_group.aks_rg.name
}

resource "azurerm_subnet" "aks_subnet" {
    name = var.subnet_name
    resource_group_name = azurerm_resource_group.aks_rg.name
    virtual_network_name = azurerm_virtual_network.aks_vnet.name
    address_prefixes = [var.subnet_address_prefix]
}

resource "azurerm_kubernetes_cluster" "aks" {
    name = var.aks_cluster_name
    location = azurerm_resource_group.aks_rg.location
    resource_group_name = azurerm_resource_group.aks_rg.name
    dns_prefix = var.dns_prefix

    default_node_pool {
        name = var.default_node_pool_name
        node_count = var.default_node_count
        vm_size = var.default_vm_size
        auto_scaling_enabled = var.enable_auto_scaling
        min_count = var.min_count
        max_count = var.max_count
        vnet_subnet_id = azurerm_subnet.aks_subnet.id
    }

    identity {
        type = var.identity_type
    }

    network_profile {
        network_plugin = var.network_plugin
        dns_service_ip = var.dns_service_ip
        service_cidr = var.service_cidr
    }

    tags = var.tags
}

 
