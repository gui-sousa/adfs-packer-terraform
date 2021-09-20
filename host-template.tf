data "template_file" "host-ansible" {
    template = "${file("hosts.txt")}"
    vars = {
      ip_instancia = "${google_compute_instance.servidor-windows-adfs.network_interface.0.access_config.0.nat_ip}"
    }
}

resource "local_file" "host" {
    filename = "./hosts.ini"
    content = "${data.template_file.host-ansible.rendered}"
}