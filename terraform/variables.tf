variable "tag_owner" {
  type = string
  default = "egle.palk@solita.fi"
}

variable "tag_duedate" {
  type = string
  default = "01.10.2022"
}

variable "resource_group_location" {
  default = "westeurope"
  description   = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default       = "rg"
  description   = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "tags" {
  default = {
      Owner = "egle.palk@solita.fi"
      Duedate = "01.10.2022"
      }
  description = "Required Azure tags"
}

 