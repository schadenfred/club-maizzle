#!/bin/bash

set -a

. mise/containers/app/env/base.env
. mise/containers/db/env/base.env
. mise/env/production.env
. mise/containers/app/env/production.env
