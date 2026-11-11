variable "bucket_name" {
  description = "Globally unique name of the log bucket"
  type        = string
}

variable "retention_days" {
  description = "Days before log objects expire"
  type        = number
  default     = 90
}

variable "tags" {
  description = "Tags applied to every resource"
  type        = map(string)
  default     = {}
}
