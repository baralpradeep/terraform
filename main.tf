provider "azurerm" {
 features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = var.RGName
    location = var.location
}




