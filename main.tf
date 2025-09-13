#resource "azurerm_resource_group" "rg" {
#  name     = var.resource_group_name
#  location = var.location
#}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = "eastus"   
  resource_group_name = "rg-desafio-guilherme"
  dns_prefix          = "${var.cluster_name}-dns"

  kubernetes_version = var.kubernetes_version

  default_node_pool {
    name       = "systempool"
    node_count = var.system_node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  # ######################################################################
  # CORREÇÃO AQUI: Renomeado de 'azure_ad...' para 'azure_active_directory...'
  # ######################################################################
  azure_active_directory_role_based_access_control {
    ##managed            = true
    azure_rbac_enabled = true

    admin_group_object_ids = [
      var.admin_user_object_id
    ]
  }

  tags = {
    environment = "devops-challenge"
    owner       = "desafio_aquarela"
  }
}