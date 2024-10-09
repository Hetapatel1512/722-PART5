#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

set -x

# Use kubectl to deploy the services
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply --insecure-skip-tls-verify --validate=false -f -

