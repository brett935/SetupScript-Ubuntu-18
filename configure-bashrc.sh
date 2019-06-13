# configure ~/.bashrc
echo -e "\e[31m !---------- Configuring ~/.bashrc ----------! \e[0m"


# add these to ~/.bashrc
gmailUsername="asdf" # don't include the @gmail.com part
echo "alias d='cd /run/user/1000/gvfs/google-drive:host=gmail.com,user=${gmailUsername}'" >> ~/.bashrc
echo "alias c='cd ~/Code'" >> ~/.bashrc
echo "alias n='nano -Bu' # backup file and allow undos " >> ~/.bashrc
echo "alias bn='play -n synth brownnoise'" >> ~/.bashrc
echo "alias a='npm start'" >> ~/.bashrc
echo "alias gc='google-chrome --remote-debugging-port=9222'" >> ~/.bashrc
echo "alias g='git'" >> ~/.bashrc
echo "alias gs='git status'" >> ~/.bashrc
echo "alias gp='git push'" >> ~/.bashrc
echo "alias gb='git branch'" >> ~/.bashrc
echo "alias gr='git rebase'" >> ~/.bashrc
echo "alias ns='npm start'" >> ~/.bashrc

echo "alias u='cd ..'"
cat << EOF >> ~/.bashrc
alias t='npm run test && npm run lint && echo -e "\e[32m !---------- Test and linting passed!  ----------! \e[0m"'
EOF
source ~/.bashrc

echo -e "\e[32m !---------- Configured ~/.bashrc ----------! \e[0m"