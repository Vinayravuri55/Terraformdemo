data "azurerm_resource_group" "example" {
  name     = "813-9e95721c-hands-on-with-terraform-on-azure" #need to update
}

resource "azurerm_app_service_plan" "example" {
  name                = "${var.company}${var.environment}asp"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "${var.company}${var.environment}as"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id
    site_config {
      application_stack {
        current_stack = "dotnet" 
        dotnet_version = "v8.0" 
      }
    }
}
