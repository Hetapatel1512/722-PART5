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
docker build -t $CONTAINER_REGISTRY/book_catalog:$VERSION -f ./Dockerfile.book_catalog .
docker build -t $CONTAINER_REGISTRY/inventory_management:$VERSION -f ./Dockerfile.inventory_management .
