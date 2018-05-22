#!/usr/bin/env bash

set -e

ROOT=$(cd "$(dirname $0)/.." && pwd)
SQLITE=/usr/bin/sqlite3
if [[ -z $1 ]]; then
	echo "Please specify a db filename"
	exit 1
fi
DBNAME=$ROOT/$1

for i in $(find $ROOT/ddl -name *.sql); do
	echo "## Creating $(basename $i)"
	$SQLITE "$DBNAME" < "$i"
done
