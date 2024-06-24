resource "vault_namespace" "allergy_ns" {
  path = "a"
  custom_metadata = {
    type = "allergy BU"
  }
}
resource "vault_namespace" "ccf_ns" {
  path = "ccf"
  custom_metadata = {
    type = "cough, clod and flu BU"
  }
}
resource "vault_namespace" "dw_ns" {
  path = "dw"
  custom_metadata = {
    type = "digital wellness BU"
  }
}
resource "vault_namespace" "pc_ns" {
  path = "pc"
  custom_metadata = {
    type = "pain care BU"
  }
}
resource "vault_namespace" "pmw_ns" {
  path = "pmw"
  custom_metadata = {
    type = "physical and mental wellness BU"
  }
}