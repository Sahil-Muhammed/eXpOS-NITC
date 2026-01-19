#!/bin/bash

# run.sh
# A script to launch the eXpOS Docker environment with the correct volume mounts.

# Get the current directory
PROJECT_DIR="$(pwd)"

echo "Starting eXpOS Environment"
echo "Mounting host directory: $PROJECT_DIR"

# Run the container
docker run -it --rm \
  -v "$PROJECT_DIR":/home/expos/myexpos \
  -w /home/expos/myexpos \
  expos:ubuntu20.04 \
  /bin/bash
