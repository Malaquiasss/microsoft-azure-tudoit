resource "azuread_conditional_access_policy" "example-policy" {
  display_name = "example-policy"
  state        = "disabled"
  #content      = data.local_file.content

  conditions {
    client_app_types = ["all"]

    applications {
      included_applications = ["accb3633-66ca-449c-af59-1d0b388e9316"]
      #included_applications = var.confidential-applications-list
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
    #application_enforced_restrictions_enabled = true
    sign_in_frequency                         = 1
    sign_in_frequency_period                  = "days"
    cloud_app_security_policy                 = "monitorOnly"
  }
}
