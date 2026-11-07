.PHONY: fmt validate lint

fmt:
	terraform fmt -recursive terraform

validate:
	cd terraform/envs/dev && terraform init -backend=false && terraform validate

lint:
	cd ansible && ansible-lint
