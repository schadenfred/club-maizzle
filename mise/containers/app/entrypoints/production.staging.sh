#!/bin/sh

set -e
set -a

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

export BASE_KEY=$(cat /run/secrets/base_key)
export PRODUCTION_KEY=$(cat /run/secrets/production_key)

bin/roro generate:exposed base production

. mise/containers/app/scripts/source_production.sh

bin/rails db:migrate
bin/rails s -b 0.0.0.0 -p 3001