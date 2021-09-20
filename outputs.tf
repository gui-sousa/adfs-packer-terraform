output "IP_ADFS" {
    value = google_compute_instance.servidor-windows-adfs.network_interface.0.access_config.0.nat_ip
    description = "Endereço IP do Servidor ADFS"
}

output "HOST_ANSIBLE" {
    value = "${data.template_file.host-ansible.rendered}"
}