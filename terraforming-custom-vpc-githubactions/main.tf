provider "google" {
    project = var.project_id
    region = var.region
}

resource "google_compute_network" "vpc_network" {
  name = var.vpc_name
}

resource "google_compute_subnetwork" "vpc_subnet" {
  name = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region = var.region
  network = google_compute_network.vpc_network.self_link
}