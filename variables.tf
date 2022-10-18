variable "name" {
  description = "(Required) Specifies the name of the resources. Changing this forces a new resource to be created."
  type        = string
  default     = "testetp"
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = string
  default     = null
}

variable "client_id" {
    description =   "Client ID (APP ID) of the application"
    type        =   string
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
}

variable "subscription_id" {
    description =   "Subscription ID"
    type        =   string
}

variable "tenant_id" {
    description =   "Tenant ID"
    type        =   string
}

