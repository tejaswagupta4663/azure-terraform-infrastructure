resource "azurerm_linux_virtual_machine" "vm" {
  name                = "vm-terraform-demo"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1s" # Free-tier friendly
  admin_username      = "tejaswa"
  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

  admin_ssh_key {
    username   = "tejaswa"
    public_key = file("~/.ssh/terraform_azure.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "22.04-LTS"
    version   = "latest"
  }

  disable_password_authentication = true
}
