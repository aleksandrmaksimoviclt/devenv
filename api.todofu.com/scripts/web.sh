#!/usr/bin/env bash

echo 'Provisioning WEB'
sh /vagrant/scripts/common.sh

echo 'Installing django dependencies'
apt-get -y install git python-dev python-virtualenv python3-pip virtualenvwrapper nginx-full libjpeg8-dev build-essential libssl-dev libffi-dev

# Setting up virtual environments
sh /vagrant/scripts/virtualenvs/api.sh
