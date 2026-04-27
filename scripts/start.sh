#!/bin/bash

echo "Pulling Docker image..."
docker pull flask-codebuild-app:latest

echo "Stopping and removing old container..."
docker stop flask-app 2>/dev/null || true
docker rm flask-app 2>/dev/null || true

echo "Running container..."
docker run -d -p 5000:5000 --name flask-app flask-codebuild-app:latest

echo "App started successfully!"
