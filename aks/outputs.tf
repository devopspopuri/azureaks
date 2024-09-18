 #Outputs 
output "kubeconfig" {
    value = azurerm_kubernetes_cluster.aks.kube_config_raw
    sensitive = true
}

output "aks_cluster_name" {
    value = azurerm_kubernetes_cluster.aks.name
}