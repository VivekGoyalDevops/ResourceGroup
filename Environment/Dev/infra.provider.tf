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
  use_oidc        = true
  subscription_id = "879e262b-becf-4bea-a163-835b023ba8e0"
  tenant_id       = "749c1dd0-8da4-446d-987c-6deb1b6cbab9"
  client_id       = "64060588-2a5a-4f40-a63b-c232de8f5cde"
}