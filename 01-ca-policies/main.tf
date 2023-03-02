# Configure the Azure Active Directory Provider
provider "azuread" {
}

# Retrieve domain information
data "azuread_domains" "aad_domains" {
  #only_initial = true
}

output "domain_names" {
  value = data.azuread_domains.aad_domains.domains.*.domain_name
}