resource "vault_namespace" "allergy_ns" {
  path = "allergy"
  }
resource "vault_namespace" "ccf_ns" {
  path = "cough_cold_flu"
}
resource "vault_namespace" "dw_ns" {
  path = "digestive_wellness"
}
resource "vault_namespace" "pc_ns" {
  path = "pain_care"
}
resource "vault_namespace" "pmw_ns" {
  path = "physical_mental_wellness"
}