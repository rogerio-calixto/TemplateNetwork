
provider "aws" {
  region  = var.regiao
  # profile = var.profile
  assume_role {
    role_arn = var.assume_role_arn
  }

  default_tags {
    tags = {
      Environment = var.ambiente
      Project     = var.projeto
      CreatedBy   = var.criado_por
    }
  }
}