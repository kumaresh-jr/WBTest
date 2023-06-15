

resource "azurerm_resource_group" "example" {
  count = 2
  name  = "rg${count.index}"
  location = "EastUS"
}

resource "azurerm_resource_group" "env" {
  count = length(var.resource_group_names)
  name = "rg-${var.resource_group_names[count.index]}"
  location = "EastUS"
}

resource "azurerm_resource_group" "map" {
  for_each = var.rgmap
  name = each.key
  location = each.value
}

resource "azurerm_public_ip" "pip" {
  name = "pip${count.index}"
  resource_group_name = azurerm_resource_group.example[0].name
  location = azurerm_resource_group.example[0].location
  allocation_method = "static"
  count = 5
}



