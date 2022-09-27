resource "azurerm_linux_virtual_machine" "vm-resource" {
  name                            = "${var.rg_name}-VM"
  resource_group_name             = var.rg_name
  location                        = var.location_name
  size                            = var.vm_size
  count                           = 1
  admin_username                  = var.username
  disable_password_authentication = true
  network_interface_ids           = [azurerm_network_interface.nicResource.id]


  admin_ssh_key {
    username   = var.username
    public_key = tls_private_key.ssh.public_key_openssh
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }
}