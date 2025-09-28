data "azurerm_resource_group" "example" {
  name     = "813-11ca4b41-hands-on-with-terraform-on-azure" #need to update
}

resource "azurerm_app_service_plan" "example" {
  name                = "hondsalesasp"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "hondaas"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id
}