variable "project_id" {
  description = "ID GCP Project"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us_central"
}

variable "bucket_name" {
  description = "bucket"
  type        = string
}

variable "location" {
  description = "ubicación del bucket"
  type        = string
}
...
