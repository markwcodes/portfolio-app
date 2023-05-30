terraform {
  required_version = ">= 1.4.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    endpoint                    = "syd1.digitaloceanspaces.com"
    region                      = "ap-southeast-2" # Unused field when using DigitalOcean Spaces (but required)
    key                         = "state/terraform.tfstate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}

provider "digitalocean" {
  token             = var.do_token
  spaces_access_id  = var.spaces_access_token
  spaces_secret_key = var.spaces_secret_key
}
