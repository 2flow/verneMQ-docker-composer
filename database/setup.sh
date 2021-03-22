#!/bin/bash
set -e

/etc/init.d/postgresql start
sleep 5
psql -f setupDB.sql
/etc/init.d/postgresql stop