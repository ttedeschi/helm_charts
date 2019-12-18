RELEASE ?= stable
GH_PAGES ?= https://dodas-ts.github.io/helm_charts
COMMIT_MSG ?= "Doc update"

CURRENT_BRANCH = "master" 

.PHONY: build-helm

all: help

help:
	@echo "Available commands:\n"
	@echo "- build-helm			: "

build-helm:
	./scripts/build_charts.sh
