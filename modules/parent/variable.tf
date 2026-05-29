variable "resource_groups" {
  type = map(object({
    rgname     = string
    rglocation = string
  }))
}
variable "aks" {
  type = map(object({
    aks_name                = string
    aks_location            = string
    aks_rgname              = string
    aks_dnsprefix           = string
    aks_oidc_issuer_enabled = bool
  }))
}