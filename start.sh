#!/bin/sh

if [ -n "$STATSD_CONFIG" ]
then
  echo "$STATSD_CONFIG" > config.js
fi

exec node stats.js config.js "$@"