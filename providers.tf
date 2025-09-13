# Configura a versão do Terraform e os provedores necessários.
terraform {
  required_version = ">=1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.43.0"
    }
  }
}

# Configura o provedor do Azure.
# O Terraform irá autenticar usando a CLI do Azure (az login) ou outras variáveis de ambiente.
provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
  subscription_id = var.subscription_id
}