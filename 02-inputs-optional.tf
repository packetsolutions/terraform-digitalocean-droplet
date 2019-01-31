variable "digitalocean_region" {
  description = "Region to build the infrastructure"
  default     = "lon1"
}

variable "droplet_image" {
  description = "Image to use"
  default     = "ubuntu-18-04-x64"
}

variable "droplet_size" {
  description = "Size of the droplet to deploy"
  default     = "s-1vcpu-1gb"
}
