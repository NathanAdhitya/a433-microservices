#!/bin/sh
# Script digunakan untuk build & push image ke GitHub Container Registry
 
# Membuat docker image dengan nama image karsajobs-ui dan tag latest.
docker build -t karsajobs-ui:latest .
 
# Ubah nama image agar sesuai dengan format GHCR
docker tag karsajobs-ui:latest ghcr.io/nathanadhitya/karsajobs-ui:latest
 
# Login ke GitHub Container Registry
echo $PASSWORD | docker login ghcr.io -u $USERNAME --password-stdin
 
# Push image ke GitHub Container Registry
docker push ghcr.io/nathanadhitya/karsajobs-ui:latest