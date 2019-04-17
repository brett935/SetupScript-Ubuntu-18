# install Docker
echo -e "\e[31m !---------- Docker Installing ----------! \e[0m"

apt -y install docker.io
systemctl start docker
systemctl enable docker

echo -e "\e[32m !---------- Docker Installed ----------! \e[0m"


