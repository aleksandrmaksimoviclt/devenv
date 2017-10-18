# Getting started

Oh My Zsh is installed by running command in your terminal.

```shell
sudo apt install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s `which zsh`
```

Install node.js with npm (and curl if not installed): 
```
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
```



## api.todofu.com
### Pre-requisites
* Vagrant (https://www.vagrantup.com/downloads.html)
* Virtual box
* Vagrant plugin "Vb-guest" (Optional)
```
sudo apt install -y virtualbox
sudo vagrant plugin install vagrant-vbguest 
```
### Runing api.todofu.com

**Important!** Make sure that code from [api-todofu repository](https://github.com/aleksandrmaksimoviclt/api-todofu) is placed one level below`/path/to/devenv/`

`cd` into  `/path/to/devenv/api.todofu.com/` directory and execute command bellow

```
vagrant up
```

If it is first time we are running `vagrant up` then we will need to `makemigrations` and `collectstatic` in DJANGO:

```
vagrant up
cd /vagrant/api
workon api
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic
exit
```
