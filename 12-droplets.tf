resource "digitalocean_droplet" "vm" {
  image      = "${var.droplet_image}"
  name       = "${var.droplet_name}"
  region     = "${var.digitalocean_region}"
  size       = "${var.droplet_size}"
  ssh_keys   = ["${data.digitalocean_ssh_key.ssh.id}"]
  volume_ids = ["${data.digitalocean_volume.volumes.*.id}"]
}
