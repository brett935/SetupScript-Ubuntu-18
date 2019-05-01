# install etcher
# https://github.com/balena-io/etcher#debian-and-ubuntu-based-package-repository-gnulinux-x86x64
echo -e "\e[31m !---------- etcher Installing ----------! \e[0m"

echo "deb https://deb.etcher.io stable etcher" | tee /etc/apt/sources.list.d/balena-etcher.list
# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61 # this key wouldn't download for some reason
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61 # use the old key until the new one works
apt-get update
apt-get -y install balena-etcher-electron

echo -e "\e[32m !---------- etcher Installed ----------! \e[0m"

