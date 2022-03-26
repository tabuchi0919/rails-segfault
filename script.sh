#!/bin/bash -eu

rm -f tmp/pids/server.pid
bundle exec rails s >/dev/null &

while true
do
  for i in `seq 0 1000`
  do
    curl -s http://localhost:3000 >/dev/null &
  done

  for i in `seq 0 10000`
  do
    echo "1" >> app/controllers/application_controller.rb
  done
done