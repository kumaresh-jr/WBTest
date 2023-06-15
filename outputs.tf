output "nametoip"{
  value = zipmap(azurerm_public_ip.pip[*].name,azurerm_public_ip.pip[*].ip_address)
}