provider "aws" {
  region  = var.regiao
  profile = var.profile
  assume_role {
    role_arn = "${var.arn_assumerole}"
  }

  default_tags {
    tags = {
      Ambiente     = var.ambiente
      Projeto      = var.projeto
      Tipo_Criacao = var.tipo_criacao
    }
  }
}