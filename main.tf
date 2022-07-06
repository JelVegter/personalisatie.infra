provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  features {}
}

# Resource group
resource "azurerm_resource_group" "resource-group-braze" {
  name     = "rg-${var.project}-braze-${var.environment}-we"
  location = var.location

  tags = var.tags
}

# Storage account
resource "azurerm_storage_account" "storage-account-braze" {
  name                     = "sa${var.project}braze${var.environment}we"
  resource_group_name      = azurerm_resource_group.resource-group-braze.name
  location                 = azurerm_resource_group.resource-group-braze.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = var.tags
}

# Storage container
resource "azurerm_storage_container" "sa-container-braze" {
  name                  = "braze"
  storage_account_name  = azurerm_storage_account.storage-account-braze.name
  container_access_type = "private"
}
