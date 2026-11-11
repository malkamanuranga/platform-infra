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
  region = "ap-south-1"
}

module "s3_logs" {
  source = "../../modules/s3-logs"

  bucket_name    = "malkamanuranga-platform-logs-shared"
  retention_days = 30

  tags = {
    Environment = "shared"
    ManagedBy   = "terraform"
  }
}
