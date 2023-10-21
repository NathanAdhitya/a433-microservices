#!/bin/sh
# Script digunakan untuk build & push image ke GitHub Container Registry

USERNAME="nathanadhitya"
IMAGE_NAME="order-service"
 
# Membuat docker image dengan nama image dan tag latest.
docker build -t $IMAGE_NAME:latest .

# Ubah nama image agar sesuai dengan format GHCR
docker tag $IMAGE_NAME:latest ghcr.io/$USERNAME/$IMAGE_NAME:latest
 
# Login ke GitHub Container Registry
echo $PASSWORD | docker login ghcr.io -u $USERNAME --password-stdin
 
# Push image ke GitHub Container Registry
docker push ghcr.io/$USERNAME/$IMAGE_NAME:latest