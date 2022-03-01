variable "vm_size" {
  type        = string
  description = "Size of the VM. Example: Standard_B2ms"
}

variable "numbercount" {
  type        = number
  description = "N of VMs to deploy"
}

variable "friendlyappname" {
  type        = string
  description = "subdomain of the app"
}
