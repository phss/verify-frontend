#!/usr/bin/env bash
./kill-service.sh

if [ "$1" == '--stub-api' ]
then
  echo "Starting stub-api server on port 50190"
  rackup --daemonize --port 50190 --pid tmp/stub_api.pid stub/stub_api_conf.ru
fi

bundle exec puma -e development -d -p 50300
