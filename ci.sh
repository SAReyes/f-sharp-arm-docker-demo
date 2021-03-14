#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" = "true" ] || [ "$TRAVIS_BRANCH" != "master" ]; then
  exit 0
fi

echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin

TAG="${TRAVIS_TAG:-latest}"
docker buildx build \
    --platform=linux/amd64,linux/arm64,linux/arm/v7 \
    -t $DOCKER_REPO:$TAG \
    --push \
    .
