# Security model

- Network: subnets do not assign public IPs by default.
- Storage: buckets are private, encrypted and versioned.
- Servers: SSH allows keys only, and fail2ban blocks repeated failures.
- Pipeline: CI runs fmt, validate, ansible-lint and a Trivy configuration scan.
- Secrets: nothing sensitive is committed. Use a secrets manager.
