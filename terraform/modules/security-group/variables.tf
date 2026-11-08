variable "name" {
  description = "Name prefix for the security group"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC the security group belongs to"
  type        = string
}

variable "allowed_cidrs" {
  description = "CIDR ranges allowed to reach HTTPS"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags applied to every resource"
  type        = map(string)
  default     = {}
}
