resource "google_compute_instance" "servidor-windows-adfs" {
   name = "servidor-windows-adfs"
   machine_type = "n1-highcpu-2"
   zone = "southamerica-east1-a"
   boot_disk {
      initialize_params {
      image = "windows-server-adfs"
   }   
}

#Define Configuração de Rede
network_interface {
   network = "default"
   access_config {}
}

service_account {
   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}


provisioner "local-exec" {
  command = "ANSIBLE_HOST_KEY_CHECKING=\"False\" ansible-playbook -i ${google_compute_instance.servidor-windows-adfs.network_interface.0.access_config.0.nat_ip}, playbook.yml"

}

}