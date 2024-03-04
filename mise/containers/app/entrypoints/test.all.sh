#!/bin/sh

set -e

bin/rails db:create
bin/rails test:all
