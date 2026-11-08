# platform-infra

Terraform modules and Ansible roles for a small cloud platform, validated by CI.

## Structure
- terraform/modules: reusable modules (vpc, security-group)
- terraform/envs: environments that compose the modules (dev, staging)
- ansible: roles that configure servers (hardening, baseline)
- .github/workflows: CI that validates everything

## Usage
    make fmt
    make validate
    make lint
