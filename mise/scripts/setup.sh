#!/bin/sh

## In case any services listed in docker-compose.yml are up:
cd ~/sandbox
mkdir -p ~/sandbox/story_store
sudo rm -rf ~/sandbox/story_store 
git clone git@github.com:handsomefencer/story_store.git

cp -r ~/work/handsomefencer/secrets/keys/* ~/sandbox/story_store/mise/keys/

cd ~/sandbox/story_store 
git checkout development
. ./mise/scripts/setup-developer.sh
exec bash


# cd story_store && . ./mise/scripts/setup-developer.sh

## optional -- clear away all images, containers and networks 
### prune 
# docker system prune -f
# docker image rm $(docker images handsomefencer/club:*)
# docker volume rm $(docker volume ls)


## Put base.key, development.key, and test.key into ./mise/keys such that 
#     $ ls mise/keys 
#   base.key  ci.key  development.key  production.key  staging.key  test.key

## Generate base, development and test environment files: 
# docker compose -f docker-compose.roro.yml run --rm roro roro generate:exposed base development test 

## Start the test service which builds the app image it uses: 
# docker compose build app 
# docker compose up -d dev-server vite


## Confirm services the test service depends on -- dev, vite, redis, chrome -- are running: 
#     $ docker ps

## Clear out assets and tmp -d files:
