#! /bin/bash

echo "############   START DATATABLE FIX   ############"
cd ../../../var/lib/mysql
mysql -uroot -p${ROOT_PASSWORD} motherlink < ../../../docker-entrypoint-initdb.d/fixDump.sql
echo "INJECT SQL into DB >>> SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));"
echo "############   DATATABLE IS FIXED   ############"
