resource "azurerm_resource_group" "example" {
  name     = "example-resources50"
  location = "West Europe"
}
resource "azurerm_public_ip" "pip" {
  name                = "pip${count.index}"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
  count               = 5
}




