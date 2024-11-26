
provider "aws" {
  region  = var.regiao
  profile = var.profile

  default_tags {
    tags = {
      Environment     = var.ambiente
      Project         = var.projeto
      CreatedBy       = var.criado-por
    }
  }
}