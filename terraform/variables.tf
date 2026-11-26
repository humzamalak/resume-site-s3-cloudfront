variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "bucket_name" {
  description = "Globally unique bucket name. Empty creates resume-site-<account-id>."
  type        = string
  default     = ""
}

variable "domain_name" {
  description = "Custom domain, for example cv.example.com. Empty uses the cloudfront.net address."
  type        = string
  default     = ""
}

variable "hosted_zone_id" {
  description = "Route 53 hosted zone for domain_name. Needed only with domain_name."
  type        = string
  default     = ""
}

variable "github_repository" {
  description = "owner/repo allowed to deploy the site through GitHub OIDC. Empty skips the deploy role."
  type        = string
  default     = ""
}

variable "create_github_oidc_provider" {
  type    = bool
  default = true
}
