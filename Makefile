all: ping lint

ping:
	ansible all -i hosts -m ping
.PHONY: ping

lint:
	ansible-playbook --syntax-check -i hosts provision/site.yml
.PHONY: lint

provision:
	ansible-playbook --ask-vault-pass -i hosts provision/site.yml
.PHONY: provision
