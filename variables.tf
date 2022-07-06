variable "project" {
  type    = string
  default = "personal"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "tenant_id" {
  type    = string
  default = "b5c47f42-c22c-453e-9984-c09cc131b040"
}
variable "subscription_id" {
  type = string
}

variable "location" {
  type    = string
  default = "West Europe"

}

variable "tags" {
  type = map(string)
}
