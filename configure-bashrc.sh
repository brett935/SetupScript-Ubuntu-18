# configure ~/.bashrc
echo -e "\e[31m !---------- Configuring ~/.bashrc ----------! \e[0m"


# add these to ~/.bashrc
gmailUsername="asdf" # don't include the @gmail.com part
echo "alias d='cd /run/user/1000/gvfs/google-drive:host=gmail.com,user=${gmailUsername}'" >> ~/.bashrc
echo "alias c='cd ~/Code'" >> ~/.bashrc
echo "alias n='nano -Bu' # backup file and allow undos " >> ~/.bashrc
echo "alias bn='play -n synth brownnoise'" >> ~/.bashrc
echo "alias a='ng serve --live-reload=false'" >> ~/.bashrc
echo "alias g='google-chrome --remote-debugging-port=9222'" >> ~/.bashrc
source ~/.bashrc

echo -e "\e[32m !---------- Configured ~/.bashrc ----------! \e[0m"