provider "azurerm" {
  features {}
}
variable "replication_type" {
  default = "dev"
  description = "dev"
}
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "EastUS"
}
resource "azurerm_storage_account" "example" {
  name                     = "yourstorageacc"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = var.replication_type == "prod" ? "LRS" : "GRS"
}
output "replication_type" {
  value = azurerm_storage_account.example.account_replication_type
}



