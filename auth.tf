

#enable an auth method (userpass for the demo), and create a 'security admin' user
#this user will perform tasks such as ns creation,
resource "vault_auth_backend" "userpass" {
  namespace = vault_namespace.it_ns.path
  type = "userpass"
  #path = "chc_cybersecu"
}
resource "vault_policy" "it_all_policy" {
   name       = "it_policy"
   namespace  = vault_namespace.it_ns.path
   policy     = <<EOF
path "*" {
   capabilities = ["sudo","read","create","update","delete","list","patch"]
}
EOF
}

resource "vault_generic_endpoint" "it_admin_user" {
  namespace  = vault_namespace.it_ns.path  
  depends_on           = [vault_auth_backend.userpass]
  path                 = "auth/userpass/users/it_admin"
  ignore_absent_fields = true
  #write_fields         = ["id"]

  data_json = <<EOT
{
  "policies": ["it_policy"],
  "password": "changeme"
}
EOT
}