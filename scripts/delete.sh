#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Enable verbose output
set -x

# Use kubectl to deploy the services
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -
