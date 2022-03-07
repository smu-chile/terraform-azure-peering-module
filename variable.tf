variable "resource_group_name" {
  type        = string
  description = "ResourceGroup Name"
}

variable "app-name" {
  type        = string
  description = "App Name"
}

variable "address_spaces" {
  type        = string
  description = "Virtual Network local"
}

variable "vnet_remote" {
  type        = string
  description = "virtual network remote"
}

variable "vnet_network" {
  type        = string
  description = "virtual network name"
}

