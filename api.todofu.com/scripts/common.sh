#!/usr/bin/env sh

echo 'apt-get common'


sudo locale-gen en_US en_US.UTF-8
sudo echo "LANG=\"en_US.UTF-8\"\n
LC_ALL=\"en_US.UTF-8\"" > /etc/default/locale

export DEBIAN_FRONTEND=noninteractive

echo ' - updating'
apt-get update > /dev/null

echo ' - upgrading'
apt-get -y upgrade > /dev/null

echo ' - installing'
apt-get -y install vim htop > /dev/null

echo ' - autoremove'
apt-get -y autoremove > /dev/null