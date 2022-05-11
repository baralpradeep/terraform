provider "azurerm" {
#  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenanat_id
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "elastic-rg"
    location = "westus"
}




