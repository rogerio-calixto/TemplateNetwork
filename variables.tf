variable "profile" {
  type    = string
  default = null
}

variable "arn_assumerole" {
  type    = string
  default = null
}

variable "regiao" {}
variable "projeto" {}
variable "ambiente" {}
variable "tipo_criacao" {}
variable "cidr_block" {}
variable "subnet_privada_config" {}
variable "subnet_publica_config" {}