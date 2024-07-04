resource "vault_namespace" "allergy_ns" {
  path = "allergy"
  custom_metadata = {
    type = "allergy BU"
  }
}
resource "vault_namespace" "ccf_ns" {
  path = "cough_cold_flu"
  custom_metadata = {
    type = "cough, clod and flu BU"
  }
}
resource "vault_namespace" "dw_ns" {
  path = "digestive_wellness"
  custom_metadata = {
    type = "digital wellness BU"
  }
}
resource "vault_namespace" "pc_ns" {
  path = "pain_care"
  custom_metadata = {
    type = "pain care BU"
  }
}
resource "vault_namespace" "pmw_ns" {
  path = "physical_mental_wellness"
  custom_metadata = {
    type = "physical and mental wellness BU"
  }
}