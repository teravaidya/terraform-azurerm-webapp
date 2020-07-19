# terraform-azurerm-webapp
Terraform module for provision Azure Service plan, App service (web app) and Application Insight inside an existing Resource Group.


## Usage

```
terraform {
  required_version = ">= 0.12"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-app" {
  name     = "RG_MyAPP_Demo"
  location = "West Europe"
}

module "webapp" {
  source               = "<source>"
  service_plan_name    = "serviceplandemo"
  app_name             = "webappdemomodule"
  location             = azurerm_resource_group.rg-app.location
  resource_groupe_name = azurerm_resource_group.rg-app.name
}

output "webapp_url" {
  value = module.webapp.webapp_url
}

```