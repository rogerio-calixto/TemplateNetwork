variable "profile" {
  type    = string
  default = null
}

variable "assume_role_arn" {
  type    = string
  default = ""
}

variable "regiao" {}
variable "projeto" {}
variable "ambiente" {}
variable "criado_por" {}
variable "cidr_block" {}
variable "subnet_privada_config" {}
variable "subnet_publica_config" {}