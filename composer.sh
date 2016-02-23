#!/bin/bash

echo "Welcome to Easy Ubuntu Dev Setup 1.0"
echo -e "Maintained By SUST CSE Developer Network (SCDN)\n"

echo "Step: [Install Composer]"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
echo -e "Composer Installation Completed Successfully\n"

echo "Thanks  !!!"
