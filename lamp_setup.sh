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
sudo apt-get install mysql-server php5-mysql
echo -e "MySQL Installation Completed Successfully\n"

echo "Step:4 [Install PHP]"
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt php5-cli
echo -e "PHP Installation Completed Successfully\n"

echo "Step:5 [Install PHPmyadmin]"
sudo apt-get install phpmyadmin
echo -e "PHPmyadmin Installation Completed Successfully\n"

echo "Step:6 [Install curl]"
sudo apt-get install curl
echo -e "curl Installation Completed Successfully\n"

echo "Step:7 [Install Git]"
sudo apt-get install git
echo -e "Git Installation Completed Successfully\n"

echo "Step:8 [Install mcrypt and enable rewrite]"
sudo php5enmod mcrypt
sudo a2enmod rewrite
sudo service apache2 restart
echo -e "mcrypt Installation and enable rewrite Completed Successfully\n" 

echo "Step:9 [Install Composer]"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
echo -e "Composer Installation Completed Successfully\n"

echo "Thanks  !!!"
