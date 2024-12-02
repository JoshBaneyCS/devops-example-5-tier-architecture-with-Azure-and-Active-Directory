variable "location" {
  description = "The Azure location where resources will be deployed"
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group to be created"
  default     = "terraform-architecture-rg"
}

variable "admin_username" {
  description = "Admin username for virtual machines and cluster nodes"
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for virtual machines and cluster nodes"
  sensitive   = true
}

variable "tags" {
  description = "A map of tags to assign to resources"
  type        = map(string)
  default     = {
    environment = "production"
    owner       = "terraform-user"
  }
}
