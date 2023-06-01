variable "do_token" {
  description = "DigitalOcean account secret token"
  type        = string
  sensitive   = true
}

variable "spaces_access_token" {
  description = "Spaces state store access key"
  type        = string
  sensitive   = true
}

variable "spaces_secret_key" {
  description = "Spaces state store secret key"
  type        = string
  sensitive   = true
}

variable "tf_state_bucket" {
  description = "State bucket name"
  type        = string
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "syd1"
}

variable "app_name" {
  description = "Computer friendly app name"
  type        = string
  default     = "portfolio-app"
}

variable "friendly_app_name" {
  description = "Human friendly app name"
  type        = string
  default     = "Portfolio App"
}

variable "environment" {
  description = "Deployment environment (development/production)"
  type        = string
  default     = "development"
}

variable "primary_domain" {
  description = "Primary domain name"
  type        = string
}

variable "vpc_ip_range" {
  description = "The range of IP addresses for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "kubernetes_version" {
  description = "Kubernetes version number prefix"
  type        = string
  default     = "1.27."
}

variable "node_pool_droplet_size" {
  description = "Node pool droplet size"
  type        = string
  default     = "s-1vcpu-2gb-amd" # Droplet sizes: https://slugs.do-api.dev/
}

variable "node_pool_auto_scale" {
  description = "Whether the node pool should auto-scale up and down based on demand"
  type        = bool
  default     = true
}

variable "node_pool_min_nodes" {
  description = "Minimum number of nodes in node pool"
  type        = number
  default     = 1
}

variable "node_pool_max_nodes" {
  description = "Maximum number of nodes in node pool"
  type        = number
  default     = 5
}
