#!/bin/sh

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

gem install roro 
roro generate:exposed base production

. mise/containers/app/scripts/source_production.sh

bin/rails db:migrate
bin/rails assets:precompile 
bin/rails s -b 0.0.0.0
