# #!/bin/bash
# MUST BE RUN USING: sudo ./start.sh
# THE SCRIPTS RUN IN SEQUENCE. THIS IS THE FIRST SCRIPT
# IF YOU GET PERMISSION ERRORS RUN: chmod +x on all the sh files in this folder

# # AUTHOR: BRETT NAPIER
# # DATE: 04-08-2019
# # USE: INSTALL DEVELOPMENT TOOLS ON UBUNTU 18

logfile="log-$(date '+%Y%m%d%H%M').txt"
script logfile # start log

# Banner
apt-get -y install lolcat
apt-get -y install figlet
apt -y install cowsay

figlet "Ubutu dev installer written by Brett Napier"
/usr/games/cowsay -f gnu I is a developer now | /usr/games/lolcat


echo -e "\e[31m !---------- Installer Script Starting ----------! \e[0m"

./update-source-list.sh
./configure-inotify-file-watcher.sh
./install-git.sh/
./install-vscode.sh
./install-nvm-1.sh
./install-nvm-2.sh
./install-npm.sh
./install-angular-cli.sh
./install-intellij.sh
./install-webstorm.sh
./install-java8-jdk-1.sh
./install-java8-jdk-2.sh
./install-htop.sh
./install-virtualbox.sh
./install-docker.sh
./install-gnome-shell-extensions.sh
./install-openconnect-vpn.sh
./install-cowsay-fortune.sh
./configure-bashrc.sh
./install-tmpreaper.sh
./disable-dualpoint-mouse-stick.sh

# add multitouch gestures to switch virtual desktops like a mac

echo -e "\e[32m !---------- Installer Script Complete ----------! \e[0m"

exit # stop logging to file
echo -e "\e[32m !---------- Logfile saved as: ${logfile} ----------! \e[0m"



# References for scripts:
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
# https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php
# https://askubuntu.com/questions/805067/is-there-a-way-to-force-yes-to-any-prompts-when-installing-from-apt-get-from
# https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php
# https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account
# https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-on-ubuntu-18-04
