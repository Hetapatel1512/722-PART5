#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

set -x
export KUBECONFIG=/home/runner/.kube/config

# Use kubectl to deploy the services
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -
