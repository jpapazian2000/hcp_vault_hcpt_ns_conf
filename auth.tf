data "tfe_outputs" "vault_infra" {
   organization = "jpapazian-org"
   workspace = "hcp_vault_hcpt_infra"
} 

#enable an auth method (userpass for the demo), and create a 'security admin' user
#this user will perform tasks such as ns creation,
resource "vault_auth_backend" "userpass" {
  namespace = vault_namespace.dw_ns.path
  type = "userpass"
  #path = "chc_cybersecu"
}
resource "vault_policy" "dw_all_policy" {
   name       = "dw_policy"
   namespace  = vault_namespace.dw_ns.path
   policy     = <<EOF
path "*" {
   capabilities = ["sudo","read","create","update","delete","list","patch"]
}
EOF
}

resource "vault_generic_endpoint" "dw_admin_user" {
  namespace  = vault_namespace.dw_ns.path  
  depends_on           = [vault_auth_backend.userpass]
  path                 = "auth/userpass/users/dw_admin"
  ignore_absent_fields = true
  #write_fields         = ["id"]

  data_json = <<EOT
{
  "policies": ["dw_policy"],
  "password": "changeme"
}
EOT
}