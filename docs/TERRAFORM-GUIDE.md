# Terraform guide

- terraform/modules holds reusable building blocks: vpc, security-group, s3-logs.
- terraform/envs holds environments that call the modules: dev, staging, shared.
- Run terraform fmt before every commit.
- Run terraform init -backend=false and terraform validate to check a change without touching AWS.
- Never run terraform apply without reading the plan first.
