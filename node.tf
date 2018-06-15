provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_droplet" "node" {
  image = "ubuntu-18-04-x64"
  name = "node1"
  region = "sgp1"
  size = "s-1vcpu-1gb"

  ipv6 = true
  monitoring = true
  resize_disk = false
  ssh_keys = [21660040]
}