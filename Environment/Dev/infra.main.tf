# This module creates the Azure Resource Group
module "module_azure_resource_group" {
  source      = "../../modules/azure-resource-group"
  rg_name     = "vivek-azure-rg"
  rg_location = "Central India"
}
module "module_azure_resource_group1" {
  source      = "../../modules/azure-resource-group"
  rg_name     = "vivek-azure-rg1"
  rg_location = "Central India"
}
