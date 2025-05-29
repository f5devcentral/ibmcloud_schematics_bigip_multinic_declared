terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.78.0"
    }
  }
}

# Configure the IBM Provider
provider "ibm" {
  region = var.region
  visibility = var.visibility
}

data "ibm_resource_group" "group" {
  name = var.resource_group
}
