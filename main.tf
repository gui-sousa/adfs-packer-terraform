provider "google" {
  credentials = file("/home/guisousa/bwg-work/keys/bwg-work-tfsa.json")
  project     = var.projeto
  region      = var.regiao
}
