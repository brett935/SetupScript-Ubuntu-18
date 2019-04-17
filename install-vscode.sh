# install VSCode
# https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-18-04/
echo -e "\e[31m !---------- VSCODE Installing ----------!  \e[0m"
apt -y  install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt -y install code
echo -e "\e[32m !---------- VSCODE Installed ----------! \e[0m"