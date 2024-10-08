# Initialises Terraform providers and sets their version numbers.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71.0"
    }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  subscription_id = "0dfabf97-c1bc-4f2c-bcc7-b1c9876c738a"

}
