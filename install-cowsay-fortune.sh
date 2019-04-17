apt -y install fortune
apt -y install cowsay

echo "if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then
    fortune | cowsay
fi" >> ~/.bashrc
source ~/.bashrc