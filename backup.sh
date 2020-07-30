#!/bin/sh
#
# backup mysql all databases
#

set `date +%Y%m%d`
TIMESTAMP=$1

basename=db_"$TIMESTAMP.sql.bz2"
filename=$basename

echo "dump mysql all database to $filename"

nice mysqldump --single-transaction --default-character-set=binary --quick --all-databases | bzip2 > $filename






