# 3. Harden SSH by default

Status: accepted

## Context
Password logins and root logins are the most common way servers are attacked.

## Decision
The hardening role disables root login and password authentication and runs fail2ban.

## Consequences
Servers need key-based access before the role runs, or the operator loses access.
