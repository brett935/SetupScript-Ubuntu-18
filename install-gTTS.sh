# install gTTS
# https://github.com/pndurette/gTTS
# this assumes that you have python and pip already installed
echo -e "\e[31m !---------- gTTS Installing ----------! \e[0m"

/usr/bin/yes | pip install gTTS # pip doesn't have a -y flag so just pipe yes to it repeatedly
# gtts-cli 'hello' --output hello.mp3 && mpg321 hello.mp3 && rm hello.mp3 # mpg321 throws an error when piped output from gtts-cli so do it this way

echo -e "\e[32m !---------- gTTS Installed ----------! \e[0m"