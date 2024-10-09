#!/bin/bash

# Exit immediately if any command fails
set -e

# Ensure the required environment variables are set
set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Enable verbose output
set -x

# Use envsubst to substitute environment variables in the Kubernetes deployment YAML file and apply it
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -

# Wait for the deployment to complete
echo "Waiting for deployment to complete..."
kubectl rollout status deployment/<your-deployment-name> --timeout=120s

# Display the services that have been deployed
echo "Displaying deployed services..."
kubectl get services

# Display the running pods
echo "Displaying running pods..."
kubectl get pods

# Display the current state of the deployments
echo "Displaying deployment status..."
kubectl get deployments
