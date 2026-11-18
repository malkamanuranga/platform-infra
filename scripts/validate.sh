#!/usr/bin/env bash
set -euo pipefail

for env in dev staging shared; do
  echo "Validating ${env}"
  (cd "terraform/envs/${env}" && terraform init -backend=false -input=false > /dev/null && terraform validate)
done
