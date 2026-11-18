# 4. Buckets are private, encrypted and versioned

Status: accepted

## Context
Log buckets often hold sensitive data and are a common source of leaks.

## Decision
Every bucket blocks public access, uses server-side encryption and keeps object versions.

## Consequences
Storage costs rise slightly because of versioning. Lifecycle rules expire old data.
