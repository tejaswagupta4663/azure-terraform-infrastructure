output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "Name of the resource group"
}

output "virtual_network_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "Virtual Network created using Terraform"
}

output "vm_name" {
  value       = azurerm_linux_virtual_machine.vm.name
  description = "Linux Virtual Machine name"
}

output "vm_public_ip" {
  value       = try(azurerm_public_ip.public_ip.ip_address, "Public IP not available due to subscription limits")
  description = "Public IP of the virtual machine"
}
