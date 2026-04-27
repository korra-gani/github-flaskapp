#!/bin/bash

echo "Pulling Docker image..."
docker pull flask-codebuild-app:latest

echo "Running container..."
docker run -d -p 5000:5000 --name flask-app flask-codebuild-app:latest

echo "App started!"
