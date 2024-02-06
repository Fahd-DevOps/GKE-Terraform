# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "<your-bucket>"
    prefix = "terraform/state"
  }
}