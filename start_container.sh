#!/bin/bash
set -e

# Set these as environment variables or inject from DevOps
OCIR_REGION="dxb.ocir.io"
OCIR_NAMESPACE="ax6enss1ld89"
OCIR_REPO="demo"  # Change 'demo' to your actual repo name if different
OCIR_URL="$OCIR_REGION/$OCIR_NAMESPACE/$OCIR_REPO"

echo "Logging in to OCIR..."
echo "jFF)WKAfyo>8Le8JH(kR" | docker login "$OCIR_REGION" -u "$OCIR_NAMESPACE/imasha.nimantha@onelexiicon.com" --password-stdin

echo "Pulling Docker image..."
docker pull "$OCIR_URL:latest"

echo "Removing any existing container..."
docker rm -f python-flask-app || true

echo "Running container..."
docker run -d --name python-flask-app -p 5000:5000 "$OCIR_URL:latest"


