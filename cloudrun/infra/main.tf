# Set provider and backend
provider "google" {
  region  = var.region
}

provider "google-beta" {
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "project-sandbox-sudhanshu-lab"
  }
}

# get the folder name to identify the system and product repo names
# e.g. folder dcsgva-ds is used to construct repo name dcsgva-ds-system
data "google_folder" "project_parent_folder" {
  folder = var.folder_id
}

locals {
  parent_folder = data.google_folder.project_parent_folder.display_name
}