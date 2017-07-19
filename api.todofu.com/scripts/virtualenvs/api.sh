#!/usr/bin/env bash

# Creating virtual environment for API
sudo -iu vagrant bash -c '
 . /usr/share/virtualenvwrapper/virtualenvwrapper.sh;
 mkvirtualenv -a /var/api -ppython3 api;
 echo "#!/bin/bash" | tee /home/vagrant/.virtualenvs/api/bin/postactivate;
 echo "alias da=\"django-admin\"" | sudo tee -a /home/vagrant/.virtualenvs/api/bin/postactivate;
 echo "export PYTHONPATH=$PYTHONPATH:/var/api" | sudo tee -a /home/vagrant/.virtualenvs/api/bin/postactivate;
'

# sudo -iu vagrant bash -c '
#  . /home/vagrant/.virtualenvs/api/bin/activate;
#  pip install -r /var/api/requirements/develop.txt;
#  cp /var/api/settings/vagrant.py /var/api/settings/local.py;
#  python /var/api/manage.py collectstatic --noinput;
#  deactivate
# '