#!/bin/bash
set -e

# wait for postgres to load completely
sh /var/www/boilerplate-app/docker/scripts/wait-for-postgres.sh

if [[ $@ == 'app' ]]; then
  exec /var/www/boilerplate-app/docker/scripts/server.sh
# elif [[ $@ == 'sidekiq' ]]; then
  # exec bundle exec sidekiq
fi

exec "$@"
