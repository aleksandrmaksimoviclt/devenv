#!/usr/bin/env bash

echo 'Provisioning DB'
sh /vagrant/scripts/common.sh

echo 'Installing PostgreSQL'
apt-get install -y postgresql postgresql-contrib

echo 'Creating user and database. Granting rights...'
sudo -u postgres bash -c "psql -c \"CREATE USER trello WITH PASSWORD 'trello';\""
sudo -u postgres createdb -O trello trellodb
