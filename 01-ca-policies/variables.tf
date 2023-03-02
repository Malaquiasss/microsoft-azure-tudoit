# This file provides the variables declared for this git project

variable "confidential-applications-list" {
  type = list(string)
}

variable "restricted-applications-list" {
  type = list(string)
}

variable "internal-or-public-applications-list" {
  type = list(string)
}