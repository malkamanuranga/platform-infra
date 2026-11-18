# 1. Build infrastructure from reusable modules

Status: accepted

## Context
Environments repeat the same network and storage patterns.

## Decision
Put each pattern in a module and let every environment call it with different inputs.

## Consequences
Changes are made once. A module change affects every environment that uses it, so each change is reviewed carefully.
