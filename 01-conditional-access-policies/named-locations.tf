# This file contains the named locations

resource "azuread_named_location" "example-ip" {
  display_name = "IP Named Location"
  ip {
    ip_ranges = [
      "1.1.1.1/32",
      "2.2.2.2/32",
    ]
    trusted = true
  }
}

resource "azuread_named_location" "test" {
  display_name = "test"
  ip {
    ip_ranges = [
      "3.3.3.3/32"
    ]
    trusted = true
  }
}

resource "azuread_named_location" "example-country" {
  display_name = "Country Named Location"
  country {
    countries_and_regions = [
      "CA",
      "US",
    ]
    include_unknown_countries_and_regions = false
  }
}