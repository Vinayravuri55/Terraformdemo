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
}

# Create a resource group in Azure
data "azurerm_resource_group" "example" {
  name     = "813-11ca4b41-hands-on-with-terraform-on-azure" #need to update
}
