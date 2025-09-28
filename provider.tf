terraform {
  required_version = ">= 1.0" # Terraform version

  # Specify the required providers
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.43.0"
    }
  }
}

# Configure the AzureRM provider
provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
  tenant_id                       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"     # Tenant ID
  subscription_id                 = "80ea84e8-afce-4851-928a-9e2219724c69"     # Subscription ID
  client_id                       = "cd30bc4b-58eb-4b6c-9931-06ffcc828ae1"     # Service principle Id
  client_secret                   = "pB.8Q~.eASnG8RhdpAiBA0JeWURuo7fryaW2ec3P" # Service principle secret
}

# Create a resource group in Azure
resource "azurerm_resource_group" "example" {
  name     = "813-11ca4b41-hands-on-with-terraform-on-azure" #need to update
}
