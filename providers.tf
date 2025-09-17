terraform {
  required_version = ">=1.12.0"
  # Define a versão mínima do Terraform necessária para rodar este código

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # Define que o provedor Azure RM será usado (fornecido pela HashiCorp)

      version = "4.43.0"
      # Versão específica do provedor azurerm
    }
  }
}

provider "azurerm" {
  features {
    # Bloco obrigatório mesmo que vazio para habilitar recursos padrão do provedor
  }

  subscription_id = var.subscription_id
  # Define a subscription do Azure onde os recursos serão criados
}
