locals {
  project = var.project # project id
  region  = var.region  # region to host project
}

provider "google" {
  credentials = file(var.file_name) # service account information
  project     = local.project
  region      = local.region
}