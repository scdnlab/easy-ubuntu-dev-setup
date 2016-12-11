echo "Welcome to Easy Ubuntu Dev Setup 1.0"
echo "[Addition of Swap Memory Module]"
echo -e "Maintained By SUST CSE Developer Network (SCDN)\n"

echo "Step:1 [Swap File Generation]"
read -p 'Swap File Size ? [GB]:  ' swapSize
sudo fallocate -l "$swapSize"G /swapfile
echo -e "Swap File Generated Successfully\n"

echo "Step:2 [Enabling Permission to the Swap File]"
sudo chmod 600 /swapfile
echo -e "Swap File Permission Enabled Successfully\n"

echo "Step:3 [Setup Swap File]"
sudo mkswap /swapfile
echo -e "Swap File Setup Done Successfully\n"

echo "Step:4 [Enable Swap File]"
sudo swapon /swapfile
echo -e "Swap File Enabled Successfully\n"

echo "Step:5 [Make the Swap File Permanent]"
sudo echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab
echo -e "Swap File is made Permament Successfully\n"

echo "Step:6 [Tweak your Swap Settings to get Best Performance]"
sudo echo "vm.swappiness=10" >> /etc/sysctl.conf
sudo echo "vm.vfs_cache_pressure = 50" >> /etc/sysctl.conf
echo -e "Swap Settings Tweaked Successfully\n"

echo "Thanks  !!!"
