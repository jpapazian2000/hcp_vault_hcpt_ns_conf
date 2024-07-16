terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "4.2.0"
    }
  }
}
data "tfe_outputs" "vault_infra" {
   organization = "jpapazian-org"
   workspace = "hcp_vault_hcpt_infra"
} 

provider "vault" {
  address = data.tfe_outputs.vault_infra.values.vault_public_url
  #address = var.vault_public_url
  auth_login_userpass {
    namespace = "admin"
    username = var.vault_admin_user
    password = var.vault_admin_password
  }
} 
