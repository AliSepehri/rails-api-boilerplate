#!/usr/bin/env bash
 
# Prefix `bundle` with `exec` so puma shuts down gracefully on SIGTERM (i.e. `docker stop`)
exec bundle exec puma --config /var/www/boilerplate-app/docker/scripts/puma.rb