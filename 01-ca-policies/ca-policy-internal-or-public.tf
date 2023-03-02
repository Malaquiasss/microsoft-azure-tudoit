# This code manages a new Conditional Access Policy on AzureAD
# Use this to manage the CA - Internal or Public Policy
# All the changes should be made here and deployed via terraform
# Changes here will affect production environment for Aplications using SSO
# Documentation: https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/conditional_access_policy

resource "azuread_conditional_access_policy" "ca-internal-or-public-policy" {
  display_name = "CA - Internal or Public Policy - QTDEV"
  state        = "disabled"

  conditions {
    client_app_types = ["all"]

    applications {
      included_applications = var.internal-or-public-applications-list
    }

    locations {
      included_locations = ["AllTrusted"]
    }

    users {
      included_users = ["All"]
    }
  }

  grant_controls {
    operator          = "OR"
    built_in_controls = ["mfa"]
  }

  session_controls {
    application_enforced_restrictions_enabled = true
    sign_in_frequency                         = 1
    sign_in_frequency_period                  = "days"
  }
}