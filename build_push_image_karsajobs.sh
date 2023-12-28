#!/bin/bash

#Build image karsajobs:latest berdasarkan Dockerfile
docker build -t karsajobs:latest .

# Mengubah nama image sesuai dengan format Docker Hub
docker tag karsajobs:latest ahdan86/karsajobs:latest

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u ahdan86 --password-stdin

# Push image ke Docker Hub
docker push ahdan86/karsajobs:latest
