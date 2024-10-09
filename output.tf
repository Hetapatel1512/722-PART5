# Outputs the container registry login server URL
output "acr_login_url" {
  value = azurerm_container_registry.container_registry.login_server
}

# Outputs the ACR admin username
output "acr_username" {
  value = azurerm_container_registry.container_registry.admin_username
}

# Outputs the ACR admin password (sensitive)
output "acr_password" {
  value     = azurerm_container_registry.container_registry.admin_password
  sensitive = true
}

# Outputs the Kubernetes cluster name
output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.cluster.name
}

# Outputs the resource group name
output "resource_group_name" {
  value = azurerm_resource_group.flixtube.name
}

# Outputs the AKS kubeconfig (sensitive)
output "aks_kubeconfig" {
  value     = base64encode(azurerm_kubernetes_cluster.cluster.kube_config_raw)
  sensitive = true
}
