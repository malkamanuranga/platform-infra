terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

module "vpc" {
  source = "../../modules/vpc"

  name     = "platform-staging"
  az_count = 2

  tags = {
    Environment = "staging"
    ManagedBy   = "terraform"
  }
}

module "web_sg" {
  source = "../../modules/security-group"

  name          = "platform-staging"
  vpc_id        = module.vpc.vpc_id
  allowed_cidrs = ["10.0.0.0/8"]

  tags = {
    Environment = "staging"
    ManagedBy   = "terraform"
  }
}

output "security_group_id" {
  value = module.web_sg.security_group_id
}
