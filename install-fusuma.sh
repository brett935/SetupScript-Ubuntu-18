# install Fusuma
# https://github.com/iberianpig/fusuma/blob/master/README.md
echo -e "\e[31m !---------- Fusuma Installing ----------! \e[0m"

gpasswd -a $USER input # you must be a member of the input group to read touchpad by Fusuma
apt -y install libinput-tools
gem install fusuma
apt -y install xdotool
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled

# add config file for Fusuma
mkdir -p ~/.config/fusuma
cd ~/.config/fusuma
rm -f config.yml
cat << EOF >> ~/.config/fusuma/config.yml
swipe:
  3: 
    left: 
      command: 'xdotool key alt+Left'
    right: 
      command: 'xdotool key alt+Right'
    up: 
      command: 'xdotool key ctrl+alt+Up'
      threshold: 1.5
    down: 
      command: 'xdotool key ctrl+alt+Down'
      threshold: 1.5
  4:
    left: 
      command: 'xdotool key super+Left'
    right: 
      command: 'xdotool key super+Right'
    up: 
      command: 'xdotool key super+a'
    down: 
      command: 'xdotool key super+s'
pinch:
  2:
    in:
      command: 'xdotool key ctrl+plus'
      threshold: 0.1
    out:
      command: 'xdotool key ctrl+minus'
      threshold: 0.1

threshold:
  swipe: 1
  pinch: 1

interval:
  swipe: 1
  pinch: 1
EOF

# add entry to startup applications for Fusuma (if this fails add manually by pressing Super key and launching Startup Applications and adding it to the list)
# gnome-session-properties
cd ~/.config/autostart
rm -f fusuma.desktop
cat << EOF >> fusuma.desktop
[Desktop Entry]
Type=Application
Exec=fusuma -d
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Fusuma
Name=Fusuma
Comment[en_US]=Touchpad Gestures
Comment=Touchpad Gestures
EOF

echo -e "\e[32m !---------- Fusuma Installed ----------! \e[0m"


