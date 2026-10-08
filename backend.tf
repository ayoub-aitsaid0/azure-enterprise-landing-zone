terraform {
    backend "azurerm" {
        resource_group_name = "rg_tfstate"
        storage_account_name = "sttfstateaz104proj"
        container_name = "tfstate"
        key = "landingzone.tfstate"  #the name of the blob within the storage account container to write the state file to.
        use_azuread_auth = true      # to use the microsoft Entra ID to authenticate to the storage account data plane.
        use_cli = true
        #tenant_id ----> inferred because we will use the CLI session
    }
}