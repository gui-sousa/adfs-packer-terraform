provider "google" {
    credentials = file("loja-virtual-sa-packer.json")
    project = "${var.projeto}"
    region = "${var.regiao}"
}
