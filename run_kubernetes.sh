#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
tag=rdaf16-api

# Step 2
# Run in Docker Hub container with kubernetes
kubectl run flaskpricepredictor\
    --generator=run-pod/v1\
    --image=$tag\
    --port=80 --labels app=flaskpricepredictor

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward flaskpricepredictor 8000:80

