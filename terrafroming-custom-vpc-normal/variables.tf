variable "project_id" {
    description = "My GCP project id"
    default = "env-ilmiya-dev"
}

variable "region" {
    description = "The region in which the resources will be created"
    default = "us-central1"
}

variable "vpc_name" {
    description = "Name of the VPC"
    default = "terraforming-custom-vpc-normal"
}

variable "subnet_name" {
    description = "Name of subnet"
    default = "terraforming-custom-vpc-subnet"
}

variable "subnet_cidr" {
    description = "Cidr range"
    default = "10.10.0.0/24"
}
