#!/bin/sh
# wait-for-mysql.sh
# Wait for MySQL to be ready before running the given command.

set -e

host="${DB_HOST:-mysql}"
user="${DB_USER:-root}"
password="${DB_PASSWORD:-}"
timeout="${MYSQL_WAIT_TIMEOUT:-30}"

cmd="$@"

printf "Waiting for MySQL at %s...\n" "$host"

for i in $(seq 1 "$timeout"); do
  if mysqladmin ping -h "$host" -u"$user" -p"$password" --silent > /dev/null 2>&1; then
    printf "MySQL is up.\n"
    exec "$@"
  fi
  printf "Still waiting... (%d/%d)\n" "$i" "$timeout"
  sleep 1

done

printf "Timed out waiting for MySQL after %d seconds\n" "$timeout"
exit 1