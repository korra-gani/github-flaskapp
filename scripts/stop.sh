#!/bin/bash

echo "Stopping container..."
docker stop flask-app 2>/dev/null || true

echo "Removing container..."
docker rm flask-app 2>/dev/null || true
