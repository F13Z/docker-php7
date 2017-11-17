#!/bin/bash
echo "Removing old images"
docker rmi website
echo "Building dockerfile..."

docker build -t "website" .
