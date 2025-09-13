resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.cluster_name}-dns"
  kubernetes_version  = var.kubernetes_version
  sku_tier            = var.sku_tier

  default_node_pool {
    name                  = "systempool"
    node_count            = var.system_node_count
    vm_size               = var.vm_size
    vnet_subnet_id        = azurerm_subnet.aks_subnet.id
    # enable_auto_scaling   = true
    # min_count             = var.min_node_count
    # max_count             = var.max_node_count
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = "10.0.2.0/24"
    dns_service_ip = "10.0.2.10"
  }

  identity {
    type = "SystemAssigned"
  }

#  azure_active_directory_role_based_access_control {
#    azure_rbac_enabled = true
#    admin_group_object_ids = [
#      var.admin_user_object_id
#    ]
#  }

  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.la_workspace.id
  }

  tags = local.tags
  
}