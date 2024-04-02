# Configure the GCP provider
provider "google" {
  credentials = file("/home/usama/Downloads/ilmiya_gcp_key/env-ilmiya-dev-33ed0cdc3a16-service.json")
  project     = var.project_id
  region      = var.region
}

# Create a custom VPC network
resource "google_compute_network" "custom_vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

# Create a subnet within the custom VPC
resource "google_compute_subnetwork" "custom_subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.custom_vpc_network.self_link
}
