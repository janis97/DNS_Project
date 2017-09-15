default: build

NAME=dns-mysql

build:
	docker build -t $(NAME) .
	docker-compose up -d
