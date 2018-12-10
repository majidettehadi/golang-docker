#!/usr/bin/env bash

# Push image according to repo name and go version
set -x
. build.properties
docker push $REPO_NAME:$GO_VERSION
