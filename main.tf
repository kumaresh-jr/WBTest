data "azurerm_client_config" "current" {
}
resource "azurerm_resource_group" "example" {
  name     = "my-vault"
  location = "West Europe"
}
resource "azurerm_key_vault" "example" {
  name                        = "myvaulthere1234"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false

  sku_name = "standard"
}

resource "azurerm_key_vault_access_policy" "example" {
  key_vault_id       = azurerm_key_vault.example.id
  tenant_id          = data.azurerm_client_config.current.tenant_id
  object_id          = data.azurerm_client_config.current.object_id
  secret_permissions = ["Backup", "Delete" ,"Get", "List" ,"Purge" ,"Recover" ,"Restore" ,"Set"]
}
  resource "azurerm_key_vault_secret" "example" {
    name         = "secret-sauce"
    value        = "szechuan"
    key_vault_id = azurerm_key_vault.example.id
  }