#!/bin/bash

# Variables
APP_NAME="prod-app"
IMAGE_NAME="prod-app"

# Stop and remove old container if it exists
docker rm -f $APP_NAME || true

# Build new Docker image
docker build -t $IMAGE_NAME .

# Run the container
docker run -d -p 80:80 --name $APP_NAME $IMAGE_NAME

echo "Deployment finished!"
