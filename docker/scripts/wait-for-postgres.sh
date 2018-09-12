#!/bin/bash
# wait-for-postgres.sh

# set -e
# shift
# cmd="$@"
export PGPASSWORD="$DATABASE_PASSWORD"
until psql -h "$DATABASE_HOST" -p "$DATABASE_PORT" -U "$DATABASE_USERNAME" postgres -c '\l'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"
# exec $cmd
