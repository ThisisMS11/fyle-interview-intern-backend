# Building and Running Flask Application with Docker

This guide will walk you through the steps to build and run your Flask application using Docker.

## Prerequisites

- Docker installed on your machine. You can download and install Docker from [here](https://www.docker.com/products/docker-desktop).

## Build Docker Image

1. Clone the repository containing your Flask application.

2. Navigate to the root directory of your Flask application in your terminal.

3. Build the Docker image using the following command:

```
bash docker build --tag fyle-flask-docker .
```

This command will build the Docker image using the Dockerfile located in your project directory and tag it with the name fyle-flask-docker  (you can give any other name as well).

## Runnning Docker Container

create a container for your image by running the docker-compose file 
```
docker-compose up
```
## Accessing the Application
Once the Docker container is running, you can access your Flask api at:

```
http://0.0.0.0:5000
```

## Stopping the Application
To stop the Docker container and remove it, use the following command:

```
docker-compose down
```

This will stop and remove the Docker container created from your Flask application.


