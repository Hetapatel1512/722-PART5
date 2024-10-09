#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

export KUBECONFIG=/home/runner/.kube/config

set -x

# Use kubectl to deploy the services
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -
