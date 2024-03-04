#!/bin/sh


if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

bin/roro generate:exposed base production

. mise/containers/app/scripts/source_production.sh

bin/vite build --mode=production
bin/rails db:migrate
bin/rails s -b 0.0.0.0