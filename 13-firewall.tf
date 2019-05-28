resource "digitalocean_firewall" "firewall_inbound" {
  count                = "${length(var.firewall_rules_inbound)}"
  name                 = "${var.firewall_name_prefix}-${element(
                           split(":", element(var.firewall_rules_inbound, count.index)),0)}"
  droplet_ids          = ["${digitalocean_droplet.vm.id}"]
  inbound_rule {
      protocol         = "${element(split(":", element(var.firewall_rules_inbound, count.index)),1)}"
      port_range       = "${element(split(":", element(var.firewall_rules_inbound, count.index)),2)}"
      source_addresses = ["${element(split(":", element(var.firewall_rules_inbound, count.index)),3)}"]
    }
}

resource "digitalocean_firewall" "firewall_outbound" {
  count                = "${length(var.firewall_rules_outbound)}"
  name                 = "${var.firewall_name_prefix}-${element(
                           split(":", element(var.firewall_rules_outbound, count.index)),0)}"
  droplet_ids          = ["${digitalocean_droplet.vm.id}"]
  outbound_rule {
      protocol              = "${element(split(":", element(var.firewall_rules_outbound, count.index)),1)}"
      port_range            = "${element(split(":", element(var.firewall_rules_outbound, count.index)),2)}"
      destination_addresses = ["${element(split(":", element(var.firewall_rules_outbound, count.index)),3)}"]
    }
}
