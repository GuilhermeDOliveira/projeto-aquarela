resource "azurerm_log_analytics_workspace" "la_workspace" {
  # Cria um Log Analytics Workspace no Azure para coleta e análise de logs

  name                = var.log_analytics_workspace_name
  # Nome do workspace definido por variável

  location            = azurerm_resource_group.rg.location
  # Localização (região) herdada do Resource Group

  resource_group_name = azurerm_resource_group.rg.name
  # Resource Group onde o workspace será criado

  sku                 = "PerGB2018"
  # Plano de cobrança do Log Analytics (por GB de dados ingeridos)

  retention_in_days   = 30
  # Tempo de retenção dos logs em dias
}
