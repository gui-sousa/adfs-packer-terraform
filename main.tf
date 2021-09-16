provider "google" {
    credentials = file("loja-virtual-sa-packer.json")
    project = "loja-virtual-324215"
    region = "southamerica-east1"
}