#!/bin/bash

echo $1

echo $RUBY_VERSION_M_P
arr=(ruby rails rails-build-deps)

for i in "${arr[@]}"; do
#   IMAGE_TAG=${1} docker compose build --no-cache --push $i
#   # IMAGE_TAG='3.3.0-alpine' docker compose build --push $i
  # IMAGE_TAG='3.3.0-alpine' docker compose build  $i
done
 