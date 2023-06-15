

resource "azurerm_resource_group" "example" {
  count = 5
  name  = "rg${count.index}"
  location = "EastUS"
}

rsource "azurerm_resource_group" "env" {
  count = length(var.resource_group_names)
  name = "rg-${var.resource_group_names[count.index]}"
  location = "EastUS"
}
output "myrg" {
  value = azurerm_resource_group.example
}



