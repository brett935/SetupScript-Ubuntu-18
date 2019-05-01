# disable TrackPoint mouse in Ubuntu
# xinput set-prop "AlpsPS/2 ALPS DualPoint Stick" "Device Enabled" 0 # disable temporarily until reboot
# echo "xinput set-prop \"TPPS/2 IBM TrackPoint\" \"Device Enabled\" 0" >> ~/.gnomerc # disable permenantly
# this doesn't seem to work loading from ~/.gnomerc so just add the command to autostart applications

# add entry to startup applications for Fusuma (if this fails add manually by pressing Super key and launching Startup Applications and adding it to the list)
# gnome-session-properties
cd ~/.config/autostart
rm -f xinput.desktop
cat << EOF >> xinput.desktop
[Desktop Entry]
Type=Application
Exec=xinput set-prop "AlpsPS/2 ALPS DualPoint Stick" "Device Enabled" 0
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Disable DualPoint Stick
Name=Disable DualPoint Stick
Comment[en_US]=Disable the annoying mouse pointer stick/button in middle of key$
Comment=Disable the annoying mouse pointer stick/button in middle of keyboard
EOF