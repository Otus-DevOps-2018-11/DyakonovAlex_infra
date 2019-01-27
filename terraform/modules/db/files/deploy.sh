#!/usr/bin/env bash
set -e

db_ip=$1

sudo cat <<EOT > /etc/mongod.conf
storage:
  dbPath: /var/lib/mongodb
  journal:
    enabled: true

systemLog:
  destination: file
  logAppend: true
  path: /var/log/mongodb/mongod.log

net:
  port: 27017
  bindIp: ${db_ip}

EOT

systemctl restart mongod