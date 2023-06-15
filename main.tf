

resource "azurerm_resource_group" "example" {
  count = 5
  name  = "rg${count.index}"
  location = "EastUS"
}
output "myrg" {
  value = azurerm_resource_group.example
}



