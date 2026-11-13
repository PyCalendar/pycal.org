# Build and serve pycal.org locally. Run `make help` for the targets.

# Bundler installed with `gem install --user-install` lives here.
export PATH := $(shell ruby -e 'print Gem.user_dir' 2>/dev/null)/bin:$(PATH)

BUNDLE ?= bundle
JEKYLL := $(BUNDLE) exec jekyll
HOST ?= 127.0.0.1
PORT ?= 4000

.DEFAULT_GOAL := help
.PHONY: help dev livehtml serve build clean

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*## "}; {printf "  %-10s %s\n", $$1, $$2}'

dev: ## Install Bundler, the Ruby gems and the pre-commit hooks
	command -v $(BUNDLE) >/dev/null || gem install --user-install bundler
	$(BUNDLE) config set --local path vendor/bundle
	$(BUNDLE) install
	@if command -v pre-commit >/dev/null; then pre-commit install; \
	else echo "pre-commit is not installed, skipping the hooks: https://pre-commit.com/#install"; fi

livehtml: ## Serve the site at http://localhost:4000 and reload the browser on changes
	$(JEKYLL) serve --livereload --host $(HOST) --port $(PORT)

serve: ## Serve the site without live reload
	$(JEKYLL) serve --host $(HOST) --port $(PORT)

build: ## Build the site into _site/
	$(JEKYLL) build

clean: ## Remove the built site and the Jekyll caches
	$(JEKYLL) clean
