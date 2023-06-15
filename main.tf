resource "azurerm_resource_group" "example" {
  provider = azurerm.dev
  name     = var.resource_group_name
  location = var.resource_group_location
}
resource "azurerm_resource_group" "test" {
  provider = azurerm.test
  #name     = "test-resource"
  #location = "east us"
  #name = var.resource_group_details[0]
  #location = var.resource_group_details[1]
  name = var.resource_group_details_map.name
  location = var.resource_group_details_map.location
}


