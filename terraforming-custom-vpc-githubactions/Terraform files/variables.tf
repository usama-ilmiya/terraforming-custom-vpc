variable "project_id" {
  description = "The ID of the GCP project."
  default = "env-ilmiya-dev"
}

variable "region" {
  description = "The region for the VPC and subnet."
  default     = "us-central1"
}

variable "vpc_name" {
  description = "Name of the VPC network."
  default     = "terraform-custom-vpc-githubactions"
}

variable "subnet_name" {
  description = "Name of the subnet."
  default     = "terraform-subnet-githubactions"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet."
  default     = "10.0.1.0/24"
}
