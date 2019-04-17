# install Git
echo -e "\e[31m !---------- Git Installing ----------! \e[0m"
apt-get -y install git

# generate SSH Key for Github
apt-get install xclip
ssh-keygen -t rsa -b 4096 -C "brett.napier@lexmark.com"
xclip -sel clip < ~/.ssh/id_rsa.pub
echo -e "\e[32m !---------- Git Installed ----------! \e[0m"