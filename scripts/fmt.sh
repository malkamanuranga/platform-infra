#!/usr/bin/env bash
set -euo pipefail

terraform fmt -recursive terraform
echo "Terraform files formatted"
