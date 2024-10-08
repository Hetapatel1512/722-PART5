#
# Creates a resource group for FlixTube in your Azure account.
#
resource "azurerm_resource_group" "flixtube" {
  name     = "sit722week92D-hp"
  location = "eastus"
}
