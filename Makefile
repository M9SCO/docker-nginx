# Имя Docker образа
IMAGE_NAME=my-nginx-image

# Имя Docker контейнера
CONTAINER_NAME=my-nginx-container

# Цель для сборки Docker образа из Dockerfile
build_from_dockerfile:
	docker build -t $(IMAGE_NAME) .
	docker run -d -p 8080:80 --name $(CONTAINER_NAME) $(IMAGE_NAME) 
# Цель для запуска контейнера с использованием docker-compose
up_from_docker_compose:
	docker-compose up -d

# Цель для остановки и удаления контейнера
kill:
	docker-compose down
	docker stop $(CONTAINER_NAME)
	docker rm $(CONTAINER_NAME)

