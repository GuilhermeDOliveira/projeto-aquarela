resource "azurerm_virtual_network" "vnet" {
  # Cria uma Virtual Network no Azure para o cluster

  name                = "vnet-${var.cluster_name}"
  # Nome da VNet concatenando com o nome do cluster

  location            = azurerm_resource_group.rg.location
  # Localização (região) herdada do Resource Group

  resource_group_name = azurerm_resource_group.rg.name
  # Resource Group onde a VNet será criada

  address_space       = var.vnet_address_space
  # Espaço de endereçamento definido por variável
}

resource "azurerm_subnet" "aks_subnet" {
  # Cria uma Subnet dentro da Virtual Network para o AKS

  name                 = "snet-${var.cluster_name}"
  # Nome da Subnet concatenando com o nome do cluster

  resource_group_name  = azurerm_resource_group.rg.name
  # Resource Group onde a Subnet será criada

  virtual_network_name = azurerm_virtual_network.vnet.name
  # Associação da Subnet à Virtual Network criada acima

  address_prefixes     = var.aks_subnet_address_prefix
  # Prefixo de endereçamento definido por variável
}
