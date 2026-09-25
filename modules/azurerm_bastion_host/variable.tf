variable "bsn" {
  description = "Azure Bastion Host configuration."

  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    subnet_name         = string
    public_ip_name      = string
  }))
}