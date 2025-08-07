terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
    
  }
  backend "azurerm" {
    resource_group_name   = "new-rg"   
    storage_account_name  = "abhaystoragepipeline"
    container_name        = "pipeline-container"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "febef730-8d0e-4e87-b84a-70939f0ce0e0"
}