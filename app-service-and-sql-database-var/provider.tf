provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=2.4.0"

  subscription_id = "7487b913-02eb-4db5-b16f-51425208393e"
  client_id       = "c594cdc9-7ef6-45e1-be7a-d3317c62befa"
  client_secret   = "gTVEiWZE_VeRwQ31WYlRNKfvoQea8ezCCb"
  tenant_id       = "4775bcd6-838a-4377-8332-5f7c240c03f4"

  features {}
}
