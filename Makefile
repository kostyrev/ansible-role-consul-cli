SHELL=/usr/bin/env bash

.PHONY: all setup lint

all: setup

setup: lint

roles:
	@ansible-galaxy install --ignore-certs -r Ansiblefile.yml 1>/dev/null

lint:
	@pip install --quiet --user -r requirements.txt
	@pre-commit install

install:
	ansible-playbook -i "localhost," playbook.yml --diff -c local --ask-become-pass
