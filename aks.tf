resource "azurerm_kubernetes_cluster" "aks" {
  # Cria um cluster AKS (Azure Kubernetes Service) no Azure

  name                = var.cluster_name
  # Nome do cluster, definido por variável

  location            = azurerm_resource_group.rg.location
  # Localização (região) herdada do Resource Group

  resource_group_name = azurerm_resource_group.rg.name
  # Nome do Resource Group onde o cluster vai ser criado

  dns_prefix          = "${var.cluster_name}-dns"
  # Prefixo DNS para os recursos internos do cluster

  kubernetes_version  = var.kubernetes_version
  # Versão do Kubernetes usada no cluster

  sku_tier            = var.sku_tier
  # Tier do serviço (ex: Free ou Paid)

  default_node_pool {
    # Configuração do pool de nós padrão (systempool)

    name                  = "systempool"
    # Nome do pool de nós

    node_count            = var.system_node_count
    # Quantidade inicial de nós definida por variável

    vm_size               = var.vm_size
    # Tamanho da máquina virtual usada para os nós

    vnet_subnet_id        = azurerm_subnet.aks_subnet.id
    # Sub-rede onde os nós vão rodar

    # enable_auto_scaling   = true
    # min_count             = var.min_node_count
    # max_count             = var.max_node_count
    # Autoescalonamento (opcional) comentado aqui
  }

  network_profile {
    # Configuração de rede do cluster

    network_plugin = "azure"
    # Plugin de rede nativo do Azure (CNI)

    service_cidr   = "10.0.2.0/24"
    # Range de IPs usado para os serviços internos do cluster

    dns_service_ip = "10.0.2.10"
    # IP do DNS interno do Kubernetes
  }

  identity {
    type = "SystemAssigned"
    # Cluster usa identidade gerenciada do Azure (SystemAssigned)
  }

  # azure_active_directory_role_based_access_control {
  #   # Configuração opcional para integrar com o Azure AD
  #   azure_rbac_enabled = true
  #   admin_group_object_ids = [
  #     var.admin_user_object_id
  #   ]
  # }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.la_workspace.id
    # Habilita o agente do Azure Monitor para enviar logs para o Log Analytics
  }

  tags = local.tags
  # Tags aplicadas para organização e governança
}
