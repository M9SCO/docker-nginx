build_from_dockerfile:
	docker build -t my-nginx-image .
run_fromdockerfile:
	docker run -d -p 8080:80 my-nginx-image

up_from_docker_compose:
	docker-compose up --build

kill:
	docker kill my-nginx-container
