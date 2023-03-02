resource "azuread_conditional_access_policy" "ca-policy-restricted" {
  display_name = "CA - Restricted Policy"
  state        = "enabled"

  conditions {
    client_app_types = ["all"]

    applications {
      included_applications = ["accb3633-66ca-449c-af59-1d0b388e9316"]
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
    sign_in_frequency                         = 8
    sign_in_frequency_period                  = "hours"
    cloud_app_security_policy                 = "monitorOnly"
  }
}
