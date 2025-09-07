terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "vivek-rg"
    storage_account_name  = "vivekstracc"
    container_name        = "vivekstracccontainer"
    key                   = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  use_oidc = true
}