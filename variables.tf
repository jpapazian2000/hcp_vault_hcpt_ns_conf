variable "vault_admin_user" {
  description = "user who will manage vault do not share outputs"
}
variable "vault_admin_password" {
  description = "password for the admin user of vault"
} 

variable "vault_public_url" {
  description = "url of the vault server"
}