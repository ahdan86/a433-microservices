#!/bin/bash

#Build image karsajobs:latest berdasarkan Dockerfile
docker build -t karsajobs-ui:latest .

# Mengubah nama image sesuai dengan format Docker Hub
docker tag karsajobs-ui:latest ahdan86/karsajobs-ui:latest

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u ahdan86 --password-stdin

# Push image ke Docker Hub
docker push ahdan86/karsajobs-ui:latest
