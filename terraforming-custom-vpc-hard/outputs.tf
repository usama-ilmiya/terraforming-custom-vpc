output "vpc_name_id" {
    value = google_compute_network.custom_vpc_network.id
}

output "subnet_id" {
    value = google_compute_subnetwork.custom_subnet.id

}