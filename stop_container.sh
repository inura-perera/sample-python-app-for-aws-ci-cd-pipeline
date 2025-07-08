#!/bin/bash
set -e

echo "Stopping container if running..."
docker stop python-flask-app || true
docker rm python-flask-app || true

