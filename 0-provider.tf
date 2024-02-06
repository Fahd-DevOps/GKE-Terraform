# Google Cloud Platform Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  region = "us-west2"
}

provider "kubernetes" {
  config_path = "~/.kube/config"  # Adjust the path to your kubeconfig file
}

# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer
resource "random_integer" "int" {
  min = 100
  max = 1000000
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.66"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}