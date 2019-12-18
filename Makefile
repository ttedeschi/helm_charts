RELEASE ?= stable
GH_PAGES ?= https://dodas-ts.github.io/helm_charts
COMMIT_MSG ?= "Doc update"

CURRENT_BRANCH = "spark_fix_PG" 

.PHONY: build-helm

all: help

help:
	@echo "Available commands:\n"
	@echo "- build-helm			: "

build-helm:
	./build_charts.sh
