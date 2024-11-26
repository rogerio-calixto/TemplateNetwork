# TemplateNetwork
Template para criação de recursos de rede

# Instrucoes:

Configurar estas variaveis conforme necessidade:

## Variaveis
- profile
- regiao
- projeto
- ambiente
- cidr_block
- subnet_privada_config
- subnet_publica_config
- criado_por

## Example:

- profile    -> "devops-profile"
- regiao     -> "us-east-1"
- projeto    -> "rpc"
- criado_por -> "terraform"
- ambiente   -> "dev"
- cidr_block    -> "10.0.0.0/16"
- subnet_privada_config -> [
		{
		  cidr_block     = "10.0.1.0/24"
		  available_zone = "${var.regiao}a"
		},
		{
		  cidr_block     = "10.0.2.0/24"
		  available_zone = "${var.regiao}b"
		},
		{
		  cidr_block     = "10.0.3.0/24"
		  available_zone = "${var.regiao}c"
		},
		{
		  cidr_block     = "10.0.4.0/24"
		  available_zone = "${var.regiao}d"
		}
		]

- subnet_publica_config = [
		{
		  cidr_block     = "10.0.8.0/24"
		  available_zone = "${var.regiao}a"
		},
		{
		  cidr_block     = "10.0.9.0/24"
		  available_zone = "${var.regiao}b"
		}
	  ]

# outputs

Alguns dados da infraestrutura criada serao retornados:

- vpc_id
- avaiable_zones
- subnet_privada_ids [] -> list(string)
- subnet_publica_ids [] -> list(string)

# Comandos Terraform

## Plan
terraform plan -out="tfplan.out"
## Apply
terraform apply "tfplan.out"
## Destroy
terraform destroy -auto-approve