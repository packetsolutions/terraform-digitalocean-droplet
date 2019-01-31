Terraform configuration to build the digital ocean droplet

Requires the variables defined in 01-inputs-required.tf

Example terraform.tfvars:
```
digitalocean_token = "mydigitaloceanapikey"
droplet_name = "mydroplet"
droplet_ssh_keys = [
  "root@ubuntu"
]
firewall_name_prefix = "gblon02prdfwl"
firewall_rules_inbound = [
  "inbound-ssh:tcp:22:0.0.0.0/0",
  "inbound-http:tcp:80:0.0.0.0/0",
]
firewall_rules_outbound = [
  "outbound-tcp:tcp:1-65535:0.0.0.0/0",
  "outbound-udp:udp:1-65535:0.0.0.0/0",
  "outbound-icmp:icmp:1-65535:0.0.0.0/0",
]
volume_names = [
  "datastore"
]
```
