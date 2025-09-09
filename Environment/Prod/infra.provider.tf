terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
  backend "azurerm" {
    use_oidc = true
    client_id = "c14045f6-2258-4728-bcee-9337b5e6da08"
    tenant_id =  "749c1dd0-8da4-446d-987c-6deb1b6cbab9"
    subscription_id = "879e262b-becf-4bea-a163-835b023ba8e0"
    resource_group_name  = "vivek-rg"
    storage_account_name = "vivekstracc"
    container_name       = "vivekstracccontainer"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "879e262b-becf-4bea-a163-835b023ba8e0"
}
