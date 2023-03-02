# Configure the Azure Active Directory Provider
provider "azuread" {
  #subscription_id = ""te
  #client_id = "217cde8b-2f61-45a4-91b2-7ba7cd24b4dd"
  #client_secret = "hav8Q~aHedoGYelqiJadX-jpxxFYLOROLcy5Za~."
  #tenant_id = "11ceceef-44ad-4403-867d-97762fa74c56"
}

#variable "client_secret" {
#}

# Retrieve domain information
#data "azuread_domains" "default" {
#  only_initial = true
#}

#data "local_file" "confidential-applications" {
#  filename = "${path.module}/confidential-applications.txt"
#}