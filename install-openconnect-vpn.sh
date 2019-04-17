# install Openconnect VPN
echo -e "\e[31m !---------- Openconnect VPN Installing ----------! \e[0m"
sudo apt-get install network-manager-openconnect-gnome
systemctl restart NetworkManager.service # restart network manager so GUI will restart with correct privaleges, It may show without doing this but it won't work until restarting the manager
echo -e "\e[32m !---------- Openconnect VPN Installed ----------! \e[0m"