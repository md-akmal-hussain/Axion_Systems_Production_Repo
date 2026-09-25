variable "bsn" {
  description = "Azure Bastion Host configuration."

  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    subnet_name         = string
    ipconfig_name      = string
  }))
}