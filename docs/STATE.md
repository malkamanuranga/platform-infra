# Terraform state

State records what Terraform has created. Treat it like a secret, because it can contain sensitive values.

- Never commit .tfstate files. .gitignore blocks them.
- Plan a remote backend before sharing an environment with other people.
- See docs/adr/0002-remote-state.md.
