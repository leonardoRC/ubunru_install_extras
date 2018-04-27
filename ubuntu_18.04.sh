#!/usr/bin/env bash
### removes
apt-get purge openjdk*

### add sources
add-apt-repository ppa:webupd8team/java -y                  # java oracle
echo deb http://archive.canonical.com/ubuntu $(lsb_release -cs) partner >> /etc/apt/sources.list   #extras
echo deb-src http://archive.canonical.com/ubuntu $(lsb_release -cs) partner >> /etc/apt/sources.list
echo deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib >> /etc/apt/sources.list   #Vbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -


### install
apt-get update

apt-get install oracle-java8-installer oracle-java8-set-default -y                    # java oracle
apt install ubuntu-restricted-extras -y
apt-get install virtualbox-5.2 -y
apt-get install gnome-tweak-tool chrome-gnome-shell gnome-shell-extensions -y
apt-get install vim ssh wget cifs-utils  -y
apt-get install p7zip p7zip-full p7zip-rar lzma lzma-dev -y  ##instalar 7zip com suporte a rar
apt-get install flashplugin-installer -y ## instala flash proprietario

## work
apt-get install -y build-essential libssl-dev libffi-dev python-dev git git-svn  python-pip
apt-get install python3-setuptools python3-dev python3-pip -y
apt-get install postgresql libpq-dev postgresql-client postgresql-client-common pgadmin3 -y
pip3 install virtualenv
pip3 install django
pip3 install psycopg2
pip3 install --upgrade pip
snap install pycharm-professional --classic

### geral upgrades
apt-get upgrade -y
apt autoremove -y



### extensions
# No Title Bar
# places
# clipboard-indicator
# Caffeine
# Refresh Wifi Connections
# Coverflow Alt-Tab
# TopIcons Plus
# Sound Input & Output Device Chooser
# Frippery Move Clock


### theme /usr/share/themes
# https://www.gnome-look.org/p/1191004/
# https://www.gnome-look.org/p/1174686/
