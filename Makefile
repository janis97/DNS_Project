default: build

NAME=dns-mysql

build:
	docker build -t $(NAME) .

run:
	docker-compose up -d

