# Declaração das variáveis de entrada para a configuração.

variable "resource_group_name" {
  type        = string
  description = "O nome do Grupo de Recursos onde o cluster AKS será criado."
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
  description = "A versão do Kubernetes a ser usada. Deixe em branco para usar a última estável recomendada pela Azure na região."
  default     = null # Ao usar null, o Azure seleciona a versão padrão/recomendada.
}

variable "system_node_count" {
  type        = number
  description = "O número de nós no pool de nós do sistema."
  default     = 3
}

variable "vm_size" {
  type        = string
  description = "O tamanho da VM para os nós do cluster (ex: 'Standard_D2s_v3')."
  default     = "Standard_D2s_v3"
}

variable "admin_user_object_id" {
  type        = string
  description = "O Object ID do usuário do Azure AD que receberá permissão de administrador no cluster."
}

variable "subscription_id" {
  type = string
  description = "ID da assinatura do Azure"
}