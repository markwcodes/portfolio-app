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

