SHELL := $(shell which bash)
.SHELLFLAGS := -xeEuo pipefail -c
.ONESHELL:

build-push:
	docker build --tag nazarewk/archlinux:latest .
	docker push nazarewk/archlinux:latest
