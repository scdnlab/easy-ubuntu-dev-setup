# easy-ubuntu-dev-setup
##Install LAMP Stack on Ubuntu 14.04
###Please run the following command on your Terminal
```bash
bash <(wget -qO- https://raw.githubusercontent.com/scdnlab/easy-ubuntu-dev-setup/master/lamp_setup.sh)
```
## Warning

When the first prompt of phpmyadmin appears, apache2 is highlighted, but not selected. If you do not hit "SPACE" to select Apache, the installer will not move the necessary files during installation. Hit "SPACE", "TAB", and then "ENTER" to select Apache.

##Install composer on Ubuntu 14.04
###Please run the following command on your Terminal
```bash
bash <(wget -qO- https://raw.githubusercontent.com/scdnlab/easy-ubuntu-dev-setup/master/composer.sh)
```

##Generate SSH Key on Ubuntu 14.04
## Warning

In case you are trying to use xclip on remote host just add -X to your ssh command
<b>sh user@host -X</b>

###Please run the following command on your Terminal
```bash
bash <(wget -qO- https://raw.githubusercontent.com/scdnlab/easy-ubuntu-dev-setup/master/generate_ssh.sh)
```
