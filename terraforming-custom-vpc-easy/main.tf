provider "google"{
    credentials = file("/home/usama/Downloads/ilmiya_gcp_key/env-ilmiya-dev-33ed0cdc3a16-service.json")
    project = "env-ilmiya-dev"
    region = "us-central1"
}


resource "google_compute_network" "vpc_network" {
  name = "my-custom-vpc-dev"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "subnet" {
  name          = "my-custom-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.self_link
  region        = "us-central1"   # or any other region you prefer
}