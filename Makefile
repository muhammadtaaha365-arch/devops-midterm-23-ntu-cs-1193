.PHONY: lint test package ci

node_modules: package-lock.json
	npm ci
	@touch node_modules

lint: node_modules
	npm run --silent lint

test: node_modules
	npm test

package: test
	npm pack

ci: lint test package
