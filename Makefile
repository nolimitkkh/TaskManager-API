.PHONY: help build run stop clean test

help:
	@echo "Task Manager API - Docker Commands"
	@echo "	 make build	   - Build Docker image"
	@echo "	 make run	   - Run Docker container"
	@echo "	 make stop	   - Stop and remove container"
	@echo "	 make clean	   - Remove Docker image"
	@echo "	 make test	   - Test API endpoint"

build:
	docker build -t task-manager-api .

run:
	docker run -d -p 5000:5000 --name task-api task-manager-api
	@echo "Container running at http://localhost:5000"

stop:
	-docker stop task-api
	-docker rm task-api
	@echo "Container stopped and removed"

clean: stop
	-docker rmi task-manager-api
	@echo "Docker image removed"

test:
	@powershell -Command "Invoke-RestMethod -Uri 'http://localhost:5000/'"