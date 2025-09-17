resource "azurerm_resource_group" "rg" {
  # Cria um Resource Group no Azure

  name     = var.resource_group_name
  # Nome do Resource Group definido por variável

  location = var.location
  # Região onde o Resource Group será criado

  lifecycle {
    prevent_destroy = true
    # Impede que o Resource Group seja destruído acidentalmente pelo Terraform
  }
}
