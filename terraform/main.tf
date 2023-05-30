resource "digitalocean_project" "project" {
  name        = format("%s %s", var.friendly_app_name, var.environment)
  environment = var.environment
}

resource "digitalocean_project_resources" "resources" {
  project = digitalocean_project.project.id
  # Add all of the following resources to the project: 
  # AppPlatformApp Bucket Database Domain DomainRecord Droplet Firewall FloatingIp Image Kubernetes LoadBalancer MarketplaceApp Saas Volume
  resources = [
  ]
}

resource "digitalocean_vpc" "vpc" {
  name     = format("%s-network-%s", var.app_name, var.environment)
  region   = var.region
  ip_range = "10.0.0.0/16"
}

