variable "resource_group_name" {
    default = "example-resources"
}
variable "resource_group_location" {
    default = "East US"
}
variable "test" {
default = "something"
}
variable "ARM_SUBSCRIPTION_ID"{

}
variable "ARM_CLIENT_ID"{
    
}
variable "ARM_CLIENT_SECRET"{
    
}
variable "ARM_TENANT_ID"{
    
}
variable "resource_group_details"{
    type = list
}
variable "resource_group_details_map"{
    type = map
}