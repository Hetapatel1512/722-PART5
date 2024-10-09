#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"

# Debugging - check if the variables are being set correctly
echo "Building images with:"
echo "CONTAINER_REGISTRY: $CONTAINER_REGISTRY"
echo "VERSION: $VERSION"

# Enable verbose output
set -x

# Build the Docker images with the correct tags
docker build -t $CONTAINER_REGISTRY/book_catalog:$VERSION -f ./book_catalog/Dockerfile .
docker build -t $CONTAINER_REGISTRY/inventory_management:$VERSION -f ./inventory_management/Dockerfile .
