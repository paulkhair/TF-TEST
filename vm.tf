resource "azurerm_windows_virtual_machine" "vm1" {
  admin_password = "Nizamuddin*9823225508"
  admin_username = "atosadmin"
  computer_name = "testvm1-cn"
  count = "2"
  enable_automatic_updates = "true"
  location = azurerm_resource_group.azrsgsoan0001-rg1.location
  name = "testvm1"
  size = "dsv2"
  resource_group_name = azurerm_resource_group.azrsgsoan0001-rg1.name
  network_interface_ids = [  ]
  os_disk {
    caching = readwrite

  }


}