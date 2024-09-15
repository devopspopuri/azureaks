terraform {
    backend "azurerm" {
        resource_group_name = "story1"
        storage_account_name = "demostory1storage"
        container_name =  "tfstate"
        key = "terraform.tfstate"
    }
}