provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.39.0"
    }
  }


backend "local" {
path = "/tmp/terraform.tfstate"
}
}

provider "kubernetes" {
host = "https://127.0.0.1:80"
}
