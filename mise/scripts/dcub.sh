#!/bin/sh

set -a 

docker compose down
docker system prune -f
docker image rm -f $(docker images handsomefencer/club*)
docker image rm -f $(docker images handsomefencer/ruby*)
docker image rm -f $(docker images handsomefencer/rails)
docker image rm -f $(docker images handsomefencer/rails-*)
docker image rm -f $(docker images story*)
docker volume rm -f $(docker volume ls --filter name=story*)
docker system prune -f
docker volume ls
docker images

docker compose build \
  --with-dependencies \
  --no-cache production-local

# dc up production-local

# docker compose down
# docker compose build --with-dependencies --no-cache test
# dc up -d test-runner
# dc run --rm dev bin/setup
# dc run --rm test-runner bin/rails db:create
# dc run --rm guard

# docker compose build --with-dependencies --no-cache production
# dc up -d test 
# dc build --with-dependencies builder
# dc build --with-dependencies test
# dc up -d test db dev redis chrome
# dc up -d dev
# dc exec test bin/rails db:create
# dc exec test bin/rails test:all