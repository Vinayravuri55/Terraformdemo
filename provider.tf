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
  tenant_id                       = "var.tenant_id"     # Tenant ID
  subscription_id                 = "var.subscription_id"     # Subscription ID
  client_id                       = "var.client_id"     # Service principle Id
  client_secret                   = "var.client_secret" # Service principle secret
}

# Create a resource group in Azure
resource "azurerm_resource_group" "example" {
  name     = "813-11ca4b41-hands-on-with-terraform-on-azure" #need to update
  location = "South Central US"
}
