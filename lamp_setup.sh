#!/bin/bash

echo "Welcome to Easy Ubuntu Dev Setup 1.0"
echo -e "Maintained By SUST CSE Developer Network (SCDN)\n"

echo "Steap:1 [System Update]"
echo "Update Starts....."
sudo apt-get update
echo -e "System Update Completed Successfully\n"

echo "Step:2 [Install Apache2]"
sudo apt-get install apache2
echo -e "Apache2 Installation Completed Successfully\n"

echo "Step:3 [Install MySQL]"
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
echo -e "MySQL Installation Completed Successfully\n"

echo "Step:4 [Install PHP7]"
sudo apt-get install php7.0-mysql php7.0-curl php7.0-json php7.0-cgi  php7.0 libapache2-mod-php7
echo -e "PHP Installation Completed Successfully\n"

echo "Step:5 [Install PHPmyadmin]"
sudo apt-get install phpmyadmin
echo -e "PHPmyadmin Installation Completed Successfully\n"

sudo systemctl restart apache2

echo "Step:6 [Install curl]"
sudo apt-get install curl
echo -e "curl Installation Completed Successfully\n"

echo "Step:7 [Install Git]"
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
echo -e "Git Installation Completed Successfully\n"

echo "Step:8 [Install mcrypt and enable rewrite]"
sudo php7.0-mcrypt mcrypt
sudo a2enmod rewrite
sudo service apache2 restart
echo -e "mcrypt Installation and enable rewrite Completed Successfully\n" 

echo "Step:9 [Install Composer]"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
echo -e "Composer Installation Completed Successfully\n"

echo "Step:10 [Install Sublime Text 3]"
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
echo -e "Sublime Text 3 Installation Completed Successfully\n"

echo "Thanks  !!!"
