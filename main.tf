
provider "aws" {
  region  = var.regiao
  # profile = var.profile
  assume_role {
    role_arn = "arn:aws:iam::365857435132:role/tf-role"
  }

  default_tags {
    tags = {
      Environment = var.ambiente
      Project     = var.projeto
      CreatedBy   = var.criado_por
    }
  }
}