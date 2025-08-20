#!/bin/bash

if [ -f /tmp/mysql_root_password.txt ]; then
  PASSWORD=$(cat /tmp/mysql_root_password.txt)
  echo "Root password accessed"
else
   echo "Password file not found"
   exit 1
if

export MYSQL_ROOT_PASSWORD=$PASSWORD

rm -rf /tmp/mysql_root_password.txt

exec /entrypoint.sh mysqld

