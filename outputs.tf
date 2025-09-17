output "cluster_name" {
  value       = azurerm_kubernetes_cluster.aks.name
  # Retorna o nome do cluster AKS criado

  description = "O nome do cluster AKS criado."
  # Descrição do output
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  # Retorna o nome do Resource Group usado

  description = "O nome do Grupo de Recursos onde o cluster foi criado."
  # Descrição do output
}

output "kube_config" {
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
  # Retorna a configuração kubeconfig do cluster para conexão

  description = "A configuração do Kubernetes para se conectar ao cluster (sensível)."
  # Descrição do output

  sensitive   = true
  # Marca o output como sensível (não será exibido em texto plano)
}
