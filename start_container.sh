#!/bin/bash
set -e

# Set these as environment variables or inject from DevOps
OCIR_URL=dxb.ocir.io/ax6enss1ld89/simple-python-flask-app

echo "Logging in to OCIR..."
echo "$OCIR_PASSWORD" | docker login phx.ocir.io -u "$OCIR_USERNAME" --password-stdin

echo "Pulling Docker image..."
docker pull "$OCIR_URL:latest"

echo "Running container..."
docker run -d --name python-flask-app -p 5000:5000 "$OCIR_URL:latest"

