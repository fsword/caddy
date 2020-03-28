#!/bin/sh

set -e

ruby ./bootstrap.rb > $CONF_FILE
cat $CONF_FILE

exec $@ --conf $CONF_FILE

