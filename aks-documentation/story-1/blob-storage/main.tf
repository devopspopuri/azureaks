# Define the provider for Azure
provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

# Create the resource group for the storage account
resource "azurerm_resource_group" "rg" {
  name     = "story1"
  location = "East US"
}

# Create the storage account for remote state
resource "azurerm_storage_account" "storage" {
  name                     = "demostory1storage"  # Must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Create the storage container for the Terraform state file
resource "azurerm_storage_container" "container" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}