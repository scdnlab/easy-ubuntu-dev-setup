#!/bin/bash

echo "Welcome to Easy Ubuntu Dev Setup 1.0"
echo -e "Maintained By SUST CSE Developer Network (SCDN)\n"

echo "Step:1 [System Update]"
echo "Update Starts....."
sudo apt-get update
echo -e "System Update Completed Successfully\n"

echo "Step:2 [Install Node.js LTS 6.x]"
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo ln -s "$(which nodejs)" /usr/bin/node
echo -e "Node.js Installation Completed Successfully\n"

echo "Step:3 [Install Node.js Package Manager - npm]"
sudo apt-get install -y npm
echo -e "npm Installation Completed Successfully\n"

echo "Thanks  !!!"
