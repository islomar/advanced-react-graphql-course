current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SHELL = /bin/sh

.PHONY: deps fix-permissions start stop destroy clean-cache


deps:
	@echo "Installing dependencies..."
	npm install

setup-devenv:
	./scripts/generate-dotenv.sh

fix-permissions:
	./scripts/fix-permissions.sh

npm/install: ACTION=install
npm/update: ACTION=update
npm/require: ACTION=install $(module)
npm npm/install npm/update npm/require:
	echo $(INTERACTIVE)
	@docker run --rm $(INTERACTIVE) --volume $(current-dir):/app --user $(id -u):$(id -g) \
		node:14.15.5-alpine3.10 npm $(ACTION) --loglevel=warn

# 🐳 Docker Compose
start: CMD=up -d
stop: CMD=stop
destroy: CMD=down

doco start stop destroy:
	@docker-compose $(CMD)

clean-cache:
	@rm -rf apps/*/*/var

save-the-world:
	@rm -rf node_modules