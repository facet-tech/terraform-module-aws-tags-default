variable "contact" {
  type        = string
  default     = "andrew.w.pinson@gmail.com"
  description = "Who to contact."
}

variable "provisioner" {
  type        = string
  default     = "terraform"
  description = "The name of the provisioner (terraform, console, cloudformation, etc)."
}

variable "date_format" {
  type        = string
  default     = "YYYY-DD-MM hh:mm:ss ZZZZZ"
  description = "The default date format."
}

variable "additional_tags" {
  type    = map(string)
  default = {}
  description = "Additional tags to add."
}

variable "environment" {
  type        = string
  default     = null
  description = "The depoloyment environment. Highly recommended."
}

variable "control_repository_url" {
  type        = string
  default     = null
  description = "The source control repository url. Highly recommended."
}

variable "module_repository_url" {
  type        = string
  default     = null
  description = "The source control repository url. Highly recommended.  Should be set in module."
}

variable "name" {
  type        = string
  default     = null
  description = "The name of the resource. Highly recommended."
}

variable "role" {
  type        = string
  default     = null
  description = "The role of the resource. Highly recommended."
}

variable "product" {
  type        = string
  default     = null
  description = "The role of the resource. Highly recommended."
}

variable "description" {
  type        = string
  default     = null
  description = "The general description of the resource.  Highly recommended."
}
