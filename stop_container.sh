#!/bin/bash
set -e

CONTAINER_NAME="python-flask-app"

echo "Stopping container if it is running..."
if docker ps -q -f name="$CONTAINER_NAME" | grep -q .; then
  docker stop "$CONTAINER_NAME"
else
  echo "Container $CONTAINER_NAME is not running."
fi

echo "Removing container if it exists..."
if docker ps -a -q -f name="$CONTAINER_NAME" | grep -q .; then
  docker rm "$CONTAINER_NAME"
else
  echo "Container $CONTAINER_NAME does not exist."
fi

echo "Container $CONTAINER_NAME stopped and removed (if it was present)."
