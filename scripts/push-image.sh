#!/bin/bash

set -u
: "$CONTAINER_REGISTRY"
: "$VERSION"
: "$REGISTRY_UN"
: "$REGISTRY_PW"

# Log in to the container registry
echo "Logging in to container registry..."
if ! echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin; then
  echo "Failed to log in to the container registry"
  exit 1
fi

# Enable verbose output
set -x

# Check if the images exist locally before pushing
if ! docker images | grep -q "$CONTAINER_REGISTRY/book_catalog:$VERSION"; then
  echo "Image $CONTAINER_REGISTRY/book_catalog:$VERSION does not exist locally. Build the image first."
  exit 1
fi

if ! docker images | grep -q "$CONTAINER_REGISTRY/inventory_management:$VERSION"; then
  echo "Image $CONTAINER_REGISTRY/inventory_management:$VERSION does not exist locally. Build the image first."
  exit 1
fi

# Push the images to the container registry
echo "Pushing book_catalog image..."
docker push $CONTAINER_REGISTRY/book_catalog:$VERSION

echo "Pushing inventory_management image..."
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION
