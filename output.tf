output "private_key" {
  value     = tls_private_key.ssh.private_key_pem
  sensitive = true
}

output "azurerm_public_ip" {
  value     = azurerm_public_ip.publicIpResource.ip_address
  sensitive = false
}