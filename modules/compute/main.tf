resource "azurerm_virtual_machine" "compute" {
  name                  = "compute-vm"
  location              = "East US"
  resource_group_name   = azurerm_resource_group.rg.name
  vm_size               = "Standard_D2_v2"
  network_interface_ids = [azurerm_network_interface.nic.id]

  storage_os_disk {
    name              = "osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "computevm"
    admin_username = "azureuser"
    admin_password = "P@ssw0rd123!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
