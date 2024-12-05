provider "aws" {
  region  = var.regiao
  profile = var.profile

  default_tags {
    tags = {
      Ambiente     = var.ambiente
      Projeto      = var.projeto
      Tipo_Criacao = var.tipo_criacao
    }
  }
}