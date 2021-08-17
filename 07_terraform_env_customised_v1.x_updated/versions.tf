terraform {
  required_version = "~> 1.0.4"

  required_providers {
    aws   = ">= 3.40.0"
    local = ">= 1.4"
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.4.1"
    }
  }

  # {{ STATE_BACKEND }}
}
