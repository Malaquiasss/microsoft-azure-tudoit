resource "azuread_conditional_access_policy" "ca-policy-internal-or-public" {
  display_name = "CA - Internal or Public Policy"
  state        = "disabled"

  conditions {
    client_app_types = ["all"]

    applications {
      included_applications = ["All"]
    }

    locations {
      included_locations = ["All"]
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
    cloud_app_security_policy                 = "monitorOnly"
  }
}
