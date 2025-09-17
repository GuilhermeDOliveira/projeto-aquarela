resource_group_name  = "rg-desafio-guilherme"
# Nome do Resource Group que será usado ou criado

subscription_id = "3f9f1f1d-90dc-4d09-999b-0b680617c5f9"
# ID da subscription do Azure onde os recursos serão criados

cluster_name         = "aks-desafio-aquarela"
# Nome do cluster AKS a ser criado

location             = "East US"
# Região do Azure onde os recursos serão provisionados

# admin_user_object_id = ""
# Object ID do grupo de administradores do Azure AD (comentado)

vm_size              = "Standard_D2s_v3"
# Tamanho da VM para os nós do AKS

sku_tier            = "Free"
# Tier do serviço AKS (Free ou Paid)

system_node_count    = 2
# Quantidade de nós no pool padrão

# min_node_count = 1
# max_node_count = 3
# Configuração de autoescalonamento (comentada)

vnet_address_space   = ["10.0.0.0/16"]
# Espaço de endereçamento da VNet

aks_subnet_address_prefix = ["10.0.1.0/24"]
# Prefixo de endereçamento da Subnet do AKS

kubernetes_version   = "1.32.6"
# Versão do Kubernetes a ser utilizada no cluster

log_analytics_workspace_name = "log-aks-aquarela"
# Nome do Log Analytics Workspace para monitoramento do AKS
