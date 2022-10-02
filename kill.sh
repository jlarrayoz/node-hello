#!/usr/bin/env sh

echo 'Kill proecss ...'
set -x
kill $(cat .pidfile)