add-apt-repository ppa:webupd8team/java -y      # java oracle
echo deb http://archive.canonical.com/ubuntu $(lsb_release -cs) partner >> /etc/apt/sources.list   #extras
echo deb-src http://archive.canonical.com/ubuntu $(lsb_release -cs) partner >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv 2EBC26B60C5A2783
wget -q "http://deb.playonlinux.com/public.gpg" -O- | apt-key add -
wget http://deb.playonlinux.com/playonlinux_precise.list -O /etc/apt/sources.list.d/playonlinux.list
echo deb http://download.virtualbox.org/virtualbox/debian saucy contrib >> /etc/apt/sources.list   #Vbox
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
add-apt-repository ppa:webupd8team/popcorntime -y

apt-get update
apt-get install vim ssh wget cifs-utils synaptic -y
apt-get install oracle-java8-installer -y
apt-get install unity-tweak-tool compizconfig-settings-manager -y
apt-get install p7zip p7zip-full p7zip-rar lzma lzma-dev -y  ##instalar 7zip com suporte a rar
apt-get install flashplugin-installer flashplugin-nonfree-extrasound -y ## instala flash proprietario
apt-get install mozilla-plugin* vlc -y ##plugins do mozzila ( instala vlc e plugins de reprodução)
apt-get install ubuntu-restricted-extras skype chromium-browser -y  ##Ubuntu-Restricted-Extras, Skype e Google Chrome
###### editor de imagens gimp
apt-get install -y gimp gimp-dcraw mjpegtools
###### compiladores e afins
apt-get install -y build-essential git git-svn
###### dock  ###### nas opçoes colocar para iniciar com o sistema
apt-get install cairo-dock cairo-dock-plug-ins -y
###### gadget monitoramento
apt-get install conky-all conky curl lm-sensors -y

apt-get install popcorn-time -y
#### instalar tema black
cp -arvf temas/* /usr/share/themes/
####adicionar na inicialização de seção:
##/home/necrodin/.conky/conky-startup.sh
cp -arvf .conky/ /home/necrodin/
### retirar itens recentes
chattr +i /home/necrodin/.local/share/recently-used.xbel

apt-get remove -y transmission-gtk transmission-common transmission-cli  transmission-qt transmission transmission-daemon
apt-get install -y deluge playonlinux wine
apt-get dist-upgrade -y
