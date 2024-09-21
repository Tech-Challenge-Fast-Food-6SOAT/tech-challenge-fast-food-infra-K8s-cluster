terraform {
  backend "gcs" {
    bucket = "lanchonete-terraform-backend"
    prefix = "infra_cluster/terraform.tfstate"
  }
}
