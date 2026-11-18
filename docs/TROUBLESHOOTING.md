# Troubleshooting

## terraform fmt fails in CI
Run terraform fmt -recursive terraform and commit the result.

## terraform validate reports an unknown reference
Check the variable or output name spelling in the module.

## ansible-lint reports a rule violation
Read the rule id in the output, then fix the task as the rule describes.

## Cannot connect over SSH after hardening
Confirm your key is installed before the hardening role runs.
