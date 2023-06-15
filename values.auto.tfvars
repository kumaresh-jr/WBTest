nsg_rules = [{
    name                       = "allowssh"
    priority                   = 150 #100-4096
    direction                  = "outbound"
    access                     = "allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = 22
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  },{
    name                       = "allowhttp"
    priority                   = 160 #100-4096
    direction                  = "outbound"
    access                     = "allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = 443
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
]
