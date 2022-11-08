resource "azurerm_resource_group" "my_res_group" {
  name     = "fromterraform"
  location = "eastus"
  tags     ={
    project="qtlearning"
    env    ="dev"
  }
}
resource "azurerm_storage_account" "my_storageac" {
  name                     = "storageaccountname"
  resource_group_name      = "fromterraform"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type   =  "GRS"

                tags     ={
                                project="qtlearning"
                                env    ="dev"
                            }
  }