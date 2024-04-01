terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.project
  region      = var.region
}

resource "google_storage_bucket" "gcs_bucket" {
  name          = var.gcs_bucket_name
  location      = var.location
  storage_class = var.gcs_storage_class
  
  uniform_bucket_level_access = true
  force_destroy               = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "gcs_dataset" {
  dataset_id = var.gcs_dataset
  location   = var.location
}
