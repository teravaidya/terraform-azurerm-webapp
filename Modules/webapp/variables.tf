variable "resource_group_name" {
  description = "Resource group name"
}

variable "location" {
  description = "Location of Azure resource"
  default = "australia east"
}

variable "service_plan_name" {
  description = "Service plan name"
}

variable "app_name" {
  description = "Name of the application"
}
