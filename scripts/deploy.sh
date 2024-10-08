#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Use kubectl to deploy the services
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -