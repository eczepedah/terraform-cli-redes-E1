variable "project_id" {
  description = "ID GCP Project"
  type       = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us_central"
}

variable "bucket_name" {
 description = "bucket"
  type = string
}

variable "location" {
  description = "ubicación del bucket"
  type = string
}
resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.location
  force_destroy = true
