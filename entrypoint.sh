#!/bin/sh

set -e

if [ "$CONF_FILE" = "" ]
then
  CONF_FILE="/etc/Caddyfile"

  ruby ./bootstrap.rb >> $CONF_FILE
fi
exec "$@ --conf $CONF_FILE"

