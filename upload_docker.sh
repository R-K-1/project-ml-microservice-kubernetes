#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
username=rdaf16
repository=ml-docker-kube
tag=rdaf16/api


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/dock_passwd.txt | docker login --username $username --password-stdin 

# Step 3:
# Push image to a docker repository
docker push $tag
