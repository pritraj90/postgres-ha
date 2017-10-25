#! /bin/sh -x

pghome=/usr/pgsql-9.6
remote_host=$1
remote_pgdata=$2

# リカバリ先のPostgreSQLを起動
ssh -T $remote_host $pghome/bin/pg_ctl -w -D $remote_pgdata start > /dev/null 2>&1 < /dev/null &
