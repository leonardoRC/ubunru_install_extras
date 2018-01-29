#!/usr/bin/env bash
add-apt-repository ppa:webupd8team/java -y      # java oracle
echo deb http://archive.canonical.com/ubuntu $(lsb_release -cs) partner >> /etc/apt/sources.list   #extras
echo deb-src http://archive.canonical.com/ubuntu $(lsb_release -cs) partner >> /etc/apt/sources.list
echo deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib >> /etc/apt/sources.list   #Vbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

apt-get update
apt-get install vim ssh wget cifs-utils  -y
apt-get install oracle-java8-installer -y
apt-get install unity-tweak-tool compizconfig-settings-manager -y
apt-get install p7zip p7zip-full p7zip-rar lzma lzma-dev -y  ##instalar 7zip com suporte a rar
apt-get install flashplugin-installer flashplugin-nonfree-extrasound -y ## instala flash proprietario
apt-get install ubuntu-restricted-extras -y  ##Ubuntu-Restricted-Extras, Skype e Google Chrome
###### compiladores e afins
apt-get install -y build-essential git git-svn
apt-get install python-setuptools python-dev build-essential -y
easy_install pip
pip install virtualenv

###### gadget monitoramento
apt-get install conky-all conky curl lm-sensors -y
#### instalar tema black
cp -arvf temas/* /usr/share/themes/
####adicionar na inicialização de seção:
##/home/necrodin/.conky/conky-startup.sh
cp -arvf .conky/ ~/
### retirar itens recentes
chattr +i ~/.local/share/recently-used.xbel
apt-get install -y deluge virtualbox-5.2

##install pycharm
snap install pycharm-professional --classic


apt autoremove -y
