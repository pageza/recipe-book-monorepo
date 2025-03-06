.PHONY: build up down logs api-test resolver-test test

build:
	docker compose -f docker-compose.yml build --no-cache

up:
	docker compose -f docker-compose.yml up -d

down:
	docker compose -f docker-compose.yml down

logs:
	docker compose -f docker-compose.yml logs -f

api-test:
	docker compose -f docker-compose.yml run --rm api go test ./...

resolver-test:
	docker compose -f docker-compose.yml run --rm resolver go test ./...

test: api-test resolver-test 