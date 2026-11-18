# 2. Keep Terraform state in a remote backend

Status: proposed

## Context
Local state files are easy to lose and cannot be shared safely.

## Decision
Use an S3 bucket with encryption and a DynamoDB lock table once real environments exist.

## Consequences
State is shared and locked, but the bucket and lock table must be created first.
