variable "project_id" {
  type        = string
  description = "ID del proyecto GCP"
}

variable "region" {
  type        = string
  description = "Región predeterminada"
  default     = "us-central1"
}

variable "bucket_name" {
  type        = string
  description = "Bucket"
}

variable "location" {
  type        = string
  description = "Ubicacion del bucket"

}

