locals {
  # Bloco para definir variáveis locais que podem ser reutilizadas no código

  tags = {
    managed_by  = "Terraform"
    # Indica que o recurso é gerenciado pelo Terraform

    environment = "devops-challenge"
    # Define o ambiente (neste caso, devops-challenge)

    owner       = "desafio_aquarela"
    # Responsável ou dono dos recursos
  }
}
