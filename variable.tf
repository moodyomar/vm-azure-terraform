variable "rg_name" {
  default     = "moody-rg"
  description = "azurerm resource group"
}

variable "location_name" {
  default     = "West Europe"
  description = "region"
}

variable "username" {
  default = "moody"
}

variable "vm_size" {
  default     = "Standard_DS1_v2"
  description = "the virtual machine size / type"
}



