# Exemplo de arquivo terraform.tfvars
# Preencha com os valores desejados.

resource_group_name  = "rg-desafio-guilherme"
subscription_id = "3f9f1f1d-90dc-4d09-999b-0b680617c5f9"
cluster_name         = "aks-desafio-aquarela"
location             = "East US"

# O Object ID do usuário do Azure AD chamado "desafio_aquarela".
# Veja as instruções abaixo para obter este valor.
admin_user_object_id = "f876cb0b-9abc-46c9-9468-0adcabbb9034"

# Opcional: Você pode customizar o tamanho e a quantidade de nós se desejar.
vm_size              = "Standard_D2s_v3"
system_node_count    = 2