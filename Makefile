.PHONY: lint test package ci

lint:
	npm run --silent lint

test:
	npm test

package: test
	npm pack

ci: lint test package
