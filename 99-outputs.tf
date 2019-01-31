output "droplet_ipv4_address" {
  value = "${digitalocean_droplet.vm.ipv4_address}"
}
