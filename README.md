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
- criado-por -> "terraform"
- ambiente   -> "dev"
- cidr-block    -> "10.0.0.0/16"
- subnet-privada-config -> [
		{
		  cidr-block     = "10.0.1.0/24"
		  available-zone = "${var.regiao}a"
		},
		{
		  cidr-block     = "10.0.2.0/24"
		  available-zone = "${var.regiao}b"
		},
		{
		  cidr-block     = "10.0.3.0/24"
		  available-zone = "${var.regiao}c"
		},
		{
		  cidr-block     = "10.0.4.0/24"
		  available-zone = "${var.regiao}d"
		}
		]

- subnet-publica-config = [
		{
		  cidr-block     = "10.0.8.0/24"
		  available-zone = "${var.regiao}a"
		},
		{
		  cidr-block     = "10.0.9.0/24"
		  available-zone = "${var.regiao}b"
		}
	  ]

# outputs

Alguns dados da infraestrutura criada serao retornados:

- vpc-id
- avaiable-zones
- subnet-privada-ids [] -> list(string)
- subnet-publica-ids [] -> list(string)

# Comandos Terraform

## Plan
terraform plan -out="tfplan.out"
## Apply
terraform apply "tfplan.out"
## Destroy
terraform destroy -auto-approve