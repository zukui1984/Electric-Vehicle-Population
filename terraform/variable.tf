variable "credentials" {
  description = "credentials"
  default     = "de-project-2024-2bdbbd8b3373.json"
}

variable "project" {
  description = "project"
  default     = "de-project-2024"
}

variable "region" {
  description = "region"
  default = "us-central1"
}

variable "location" {
    description = "location"
    default = "US"
}

variable "gcs_bucket_name" {
  description = "Electric Vehicle Population"
  default     = "de-project-2024.electric_vehicle.vehicle_data_population"
}

variable "gcs_dataset" {
  description = "Electric Vehicle"
  default     = "de-project-2024.electric_vehicle"
}

variable "zone" {
  default = "us-central1-c"
}

variable "gcs_storage_class" {
  description = "Storage Class"
  default     = "STANDARD"
} 
