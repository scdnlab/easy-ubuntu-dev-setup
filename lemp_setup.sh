#!/bin/bash

echo "Welcome to Easy LEMP Stack Setup 3.0"
echo -e "Maintained By SUST CSE Developer Network (SCDN)\n"

echo "Steap:1 [System Update]"
echo "Update Starts....."
sudo apt-get update
echo -e "System Update Completed Successfully\n"

echo "Step:2 [Install NGINX]"
sudo apt-get install -y nginx
echo -e "NGINX Installation Completed Successfully\n"

echo "Step:3 [Install MySQL]"
sudo apt-get install -y mysql-server mysql-client libmysqlclient-dev
echo -e "MySQL Installation Completed Successfully\n"

echo "Step:4 [Install PHP7.2]"
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php -y 
sudo apt-get -y update
sudo apt-get install -y php7.2
sudo apt-cache search php7.2
sudo apt-get install -y php7.2-redis php7.2-cli php7.2-fpm php7.2-mysql php7.2-curl php7.2-json php7.2-cgi libphp7.2-embed libapache2-mod-php7.2 php7.2-zip php7.2-mbstring php7.2-xml php7.2-intl

echo -e "PHP 7.2 Installation Completed Successfully\n"

sudo systemctl start php7.2-fpm
sudo systemctl enable php7.2-fpm

echo "Step:5 [Install PHPmyadmin]"
wget https://files.phpmyadmin.net/phpMyAdmin/4.7.9/phpMyAdmin-4.7.9-all-languages.zip -O ./phpmyadmin.zip
unzip phpmyadmin.zip -d /home/farhad/html
mv phpMyAdmin-4.7.9-all-languages /home/farhad/html/phpmyadmin
sudo chown -R www-data:www-data /home/farhad/html/phpmyadmin/
sudo chmod -R 755 /home/farhad/html/phpmyadmin
echo -e "PHPmyadmin Installation Completed Successfully\n"

sudo systemctl restart nginx

echo "Remove the default symlink in sites-enabled directory"
sudo rm /etc/nginx/sites-enabled/default
cat > /etc/nginx/sites-enabled/default.conf <<EOF
server {
   listen 80;
   #listen [::]:80;
   root /home/$USER/html;
   index index.php index.html index.htm index.nginx-debian.html;
   server_name localhost;

   location / {
       try_files $uri $uri/ /index.php?$query_string;
   }

location ~ \.php$ {
    #NOTE: You should have "cgi.fix_pathinfo = 0;" in php.ini
    include fastcgi_params;                
    fastcgi_intercept_errors on;
    fastcgi_pass unix:/run/php/php7.2-fpm.sock;
    fastcgi_param SCRIPT_FILENAME $document_root/$fastcgi_script_name;
}
   location ~ /\.ht {
       deny all;
   }
}
EOF

sudo nginx -t
sudo systemctl reload nginx

echo "Step:6 [Install curl]"
sudo apt-get install -y curl
echo -e "curl Installation Completed Successfully\n"

echo "Step:7 [Install Git]"
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install -y git
echo -e "Git Installation Completed Successfully\n"

echo "Step:8 [Install mcrypt and enable rewrite]"
sudo service php7.2-fpm restart
sudo systemctl restart nginx
echo -e "mcrypt Installation and enable rewrite Completed Successfully\n" 

echo "Step:9 [Install Composer]"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
echo -e "Composer Installation Completed Successfully\n"


echo "Thanks  !!! ~ SUST CSE Developer Network (SCDN) - http://scdnlab.com"
