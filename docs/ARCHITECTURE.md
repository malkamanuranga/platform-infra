# Architecture

- Terraform modules define reusable building blocks (VPC, security group).
- Environments compose modules and hold environment-specific values.
- Ansible roles configure servers after they exist.
- CI validates formatting, Terraform configuration and Ansible lint on every change.

Flow: commit -> pull request -> CI validation -> merge -> apply from a controlled pipeline.
