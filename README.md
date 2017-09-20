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
```
sudo apt install -y virtualbox
```
### Runing api.todofu.com
`cd` into api.todofu.com directory and execute command bellow
```
vagrant up
```
