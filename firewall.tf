resource "google_compute_firewall" "adfs-firewall" {
    name = "adfs-firewall"
    network = "default"

    allow {
      protocol = "icmp"
    }
    allow {
      protocol = "tcp"
      ports = ["3389","5986","80","443","8080"]
    }
  
}