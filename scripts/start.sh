#!/bin/bash

echo "Pulling Docker image..."
docker pull flask-codebuild-app:latest

echo "Stopping old containers..."
docker stop $(docker ps -q) 2>/dev/null || true
docker rm $(docker ps -aq) 2>/dev/null || true

echo "Running container..."
docker run -d -p 5000:5000 flask-codebuild-app:latest

echo "App started!"
