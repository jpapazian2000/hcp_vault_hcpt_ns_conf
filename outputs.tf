output "dw_namespace" {
    value = vault_namespace.dw_ns.path
}
output "allergy_namespace" {
    value = vault_namespace.allergy_ns.path
}
output "ccf_namespace" {
    value = vault_namespace.ccf_ns.path
}
output "pc_namespace" {
    value = vault_namespace.pc_ns.path
}
output "pmw_namespace" {
    value = vault_namespace.pmw_ns.path
}
#output "dw_admin_user" {
    #value = vault_generic_endpoint.dw_admin.write_data["id"]
#}