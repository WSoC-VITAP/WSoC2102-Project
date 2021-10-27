default: ## Build project
	@-rm -rf dist
	@-midkr dist
	@yarn build
	@yarn sass
	@cp -r static/* ./dist

env: ## Ready development environment
	@yarn install

clean:  ## Clean build assets
	@-rm -rf node_modules
	@-rm -rf dist

lint: ## linting
	yarn lint

help: ## Prints help for targets with comments
	@cat $(MAKEFILE_LIST) | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
