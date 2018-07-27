PORT=8080
PG_PORT=5432
-include .env

DOCKER_ROOT=docker
DOCKER_ENV=COMPOSE_PROJECT_NAME=biotope-tools PORT=$(PORT) PG_PORT=$(PG_PORT)

build: ## Build the application as a docker image
	mvn clean package -Pdocker

run: ## Run the application
	java -jar target/biotope-tools.jar --server.port=$(PORT)

env-start: ## Build and start the development environment with docker compose (Postgres)
	cd $(DOCKER_ROOT) && echo $(DOCKER_ENV) && $(DOCKER_ENV) docker-compose -f dependencies-compose.yaml pull --ignore-pull-failures && $(DOCKER_ENV) docker-compose -f dependencies-compose.yaml up -d

env-stop: ## Stop the development environment with docker compose (Postgres)
	cd $(DOCKER_ROOT) && $(DOCKER_ENV) docker-compose -f dependencies-compose.yaml stop