variable "nsg_rules"{

  description = "a list of nsg rules"

  type = list(object({

    name                       = string

    priority                   = number #100-4096

    direction                  = string

    access                     = string

    protocol                   = string

    source_port_range          = number

    destination_port_range     = number

    source_address_prefix      = string

    destination_address_prefix = string

  }))

}