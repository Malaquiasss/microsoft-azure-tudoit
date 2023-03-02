# This file provides the variables for this git project by adding the Application ID to each of the
# applications according to the Conditional Access Policy
# Changes here will affect production environment for Aplications using SSO
# Documentation: https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/conditional_access_policy

confidential-applications-list = [
  #"9fd5aa38-64a7-401c-acb0-76a19feae86c", #PagerDuty
  #"bc87c374-1c7d-404b-857b-15c119a0f3ba"  #Resolver
]

restricted-applications-list = [
  #"6029211b-bd07-4923-92a9-8280c6629528" #DigiCert
]

internal-or-public-applications-list = [
  #"4077d09d-5f03-494a-8dab-7362dedb00bf" #Zoom
]