data "digitalocean_volume" "volumes" {
  count  = "${length(var.volume_names)}"
  name   = "${element(var.volume_names, count.index)}"
  region = "${var.digitalocean_region}"
}
