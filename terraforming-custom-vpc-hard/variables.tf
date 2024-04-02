variable "project_id" {
    description = "GCP project ID"
    default = "env-ilmiya-dev"
}

variable "region" {
    description = "GCP region to deploy the VPC in"
    default = "us-central1"
}

variable "vpc_name" {
    description = "Name of the custom vpc name"
    default = "terraforming-custom-vpc-hard"
}

variable "subnet_name" {
     description = "Name of the custom subnet"
     default = "terraforming-cuatom-subnet-hard"
}

variable "subnet_cidr" {
     description = "Cidr range for custom subnet"
     default = "10.10.0.0/24"
}