variable "resource_group_name" {
  type        = string
  description = "O nome do Grupo de Recursos onde os recursos serão criados."
}

variable "location" {
  type        = string
  description = "A região do Azure onde os recursos serão criados (ex: 'Brazil South')."
  default     = "Brazil South"
}

variable "cluster_name" {
  type        = string
  description = "O nome para o cluster AKS."
}

variable "kubernetes_version" {
  type        = string
  description = "A versão do Kubernetes a ser usada. Deixe em branco para usar a última estável."
  default     = null 
}

variable "sku_tier" {
  type        = string
  description = "O nível SKU do cluster AKS (ex: 'free' ou 'paid')."
  default     = "Free"
}

variable "system_node_count" {
  type        = number
  description = "O número inicial de nós no pool de nós do sistema."
  default     = 1
}

# variable "min_node_count" {
#   type        = number
#   description = "O número mínimo de nós para o autoescalonamento."
#   default     = 1
# }

# variable "max_node_count" {
#   type        = number
#   description = "O número máximo de nós para o autoescalonamento."
#   default     = 3
# }

variable "vm_size" {
  type        = string
  description = "O tamanho da VM para os nós do cluster (ex: 'Standard_D2s_v3')."
  default     = "Standard_D2s_v3"
}

# variable "admin_user_object_id" {
#   type        = string
#   description = "O Object ID do usuário ou grupo do Azure AD que receberá permissão de administrador no cluster."
# }

variable "subscription_id" {
  type        = string
  description = "ID da assinatura do Azure."
}

variable "vnet_address_space" {
  type        = list(string)
  description = "O espaço de endereço da VNet para o cluster AKS."
  default     = ["10.0.0.0/16"]
}

variable "aks_subnet_address_prefix" {
  type        = list(string)
  description = "O prefixo de endereço da sub-rede para o cluster AKS."
  default     = ["10.0.1.0/24"]
}

variable "log_analytics_workspace_name" {
  type        = string
  description = "Nome do Log Analytics Workspace para o monitoramento."
  default     = "log-aks-aquarela"
}