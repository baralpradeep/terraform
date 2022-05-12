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

#Create virtual network
resource "azurerm_virtual_network" "vnet" {
    name                = "vnet-dev-westus2-001"
    address_space       = ["10.0.0.0/16"]
    location            = var.location 
    resource_group_name = azurerm_resource_group.rg.name
}






