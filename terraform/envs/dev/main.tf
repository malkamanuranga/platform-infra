terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state (enable once the bucket and lock table exist):
  # backend "s3" {
  #   bucket         = "YOUR-STATE-BUCKET"
  #   key            = "platform-infra/dev/terraform.tfstate"
  #   region         = "ap-south-1"
  #   dynamodb_table = "terraform-locks"
  #   encrypt        = true
  # }
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

  name     = "platform-dev"
  az_count = 2

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
