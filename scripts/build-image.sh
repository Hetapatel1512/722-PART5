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

# Build Docker images for book_catalog and inventory_management
docker buildx build -t $CONTAINER_REGISTRY/book_catalog:$VERSION ./book_catalog
docker buildx build -t $CONTAINER_REGISTRY/inventory_management:$VERSION ./inventory_management
