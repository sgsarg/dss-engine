build:
	docker-compose build
up:
	docker-compose up -d app
test:
	poetry run pytest --tb=short
logs:
	docker-compose logs app | tail -100
down:
	docker-compose down
run:
	docker run -it -p 9080:9080 --rm --name pyddd pyddd


all: down build up test