#!/bin/bash

echo "Logging in to OCIR..."
docker login phx.ocir.io -u '<tenancy-namespace>/<username>' -p '<auth_token>'

echo "Pulling latest Docker image..."
docker pull phx.ocir.io/<tenancy-namespace>/simple-python-flask-app:latest

echo "Stopping old container (if running)..."
docker stop python-flask-app || true && docker rm python-flask-app || true

echo "Starting new container..."
docker run -d --name python-flask-app -p 5000:5000 phx.ocir.io/<tenancy-namespace>/simple-python-flask-app:latest

