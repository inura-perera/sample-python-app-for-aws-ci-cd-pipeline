#!/bin/bash
docker stop python-flask-app || true && docker rm python-flask-app || true
