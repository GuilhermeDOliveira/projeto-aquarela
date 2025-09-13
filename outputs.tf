output "cluster_name" {
  value       = azurerm_kubernetes_cluster.aks.name
  description = "O nome do cluster AKS criado."
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "O nome do Grupo de Recursos onde o cluster foi criado."
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  description = "A configuração do Kubernetes para se conectar ao cluster (sensível)."
  sensitive   = true
}