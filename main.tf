provider "google" {
  credentials = file("adfs-dev.json")
  project     = var.projeto
  region      = var.regiao
}
