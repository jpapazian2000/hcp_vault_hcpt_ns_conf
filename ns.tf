resource "vault_namespace" "it_ns" {
  path = "IT"
  }
resource "vault_namespace" "BU1_ns" {
  path = "BU1"
}
resource "vault_namespace" "BU2_ns" {
  path = "dBU2"
}
resource "vault_namespace" "app1_ns" {
  path = "app1"
}
