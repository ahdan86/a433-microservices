#!/bin/bash

# Build image item-app:v1 berdasarkan Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image yang sudah dibuat
docker images

# Mengubah nama image sesuai dengan format Docker Hub
docker tag item-app:v1 ahdan86/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u ahdan86 --password-stdin

# Unggah image ke Docker Hub
docker push ahdan86/item-app:v1