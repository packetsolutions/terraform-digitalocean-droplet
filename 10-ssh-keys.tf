data "digitalocean_ssh_key" "ssh" {
  count = "${length(var.droplet_ssh_keys)}"
  name = "${element(var.droplet_ssh_keys, count.index)}"
}
