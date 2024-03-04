#!/bin/sh

set -e

bin/rails db:create
bundle exec guard