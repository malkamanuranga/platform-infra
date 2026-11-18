# Ansible

- inventory/hosts.ini lists the servers, grouped by role.
- playbook.yml applies the baseline and hardening roles to the web group.
- roles/baseline installs basic tools and keeps the clock in sync.
- roles/hardening locks down SSH and enables fail2ban.

Run a dry run first: ansible-playbook playbook.yml --check --diff
