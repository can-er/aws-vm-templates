variable "numbercount" {
  type        = number
  description = "N of VMs to deploy"
}

variable "friendlyappname" {
  type        = string
  description = "subdomain of the app"
}

variable "regionname" {
  type        = string
  description = "Region of the instance"
}

variable "mykeyname" {
  type        = string
  description = "Key name of the stored SSH key in AWS"
}

variable "myami" {
  type        = string
  description = "AMI of the instance"
}

variable "myinstancetype" {
  type        = string
  description = "Size of the instance"
}


