variable "digitalocean_token" {
  description = "API token used to access digital ocean"
}

variable "droplet_name" {
  description = "Name of the droplet"
}

variable "firewall_name_prefix" {
  description = "Name of the digital ocean firewall"
}

variable "droplet_ssh_keys" {
  description = "SSH keys to add to the droplet"
  type        = "list"
}

variable "firewall_rules_inbound" {
  description = "List of rules to be added to the firewall"
  type        = "list"
}

variable "firewall_rules_outbound" {
  description = "List of rules to be added to the firewall"
  type        = "list"
}
variable "volume_names" {
  description = "List of volumes to mount on the droplet"
  type        = "list"
}
