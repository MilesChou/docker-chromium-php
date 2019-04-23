#!/bin/sh

set -e

if [ "$1" != "" ]; then
    chromedriver > /var/log/chromedriver.log 2>&1 &
    exec $@
fi

chromedriver
