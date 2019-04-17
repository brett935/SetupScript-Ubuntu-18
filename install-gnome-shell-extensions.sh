# install Gnome Shell Extensions
echo -e "\e[31m !---------- Gnome Shell Extensions Installing ----------! \e[0m"

# https://extensions.gnome.org/extension/779/clipboard-indicator/
URL="https://extensions.gnome.org/extension-data/clipboard-indicator%40tudmotu.com.v27.shell-extension.zip"
wget -o temp.zip $URL
filename="temp.zip"
UUID=$(unzip -c $filename metadata.json | grep uuid | cut -d \" -f4)
mkdir -p ~/.local/share/gnome-shell/extensions/$UUID
unzip -q $filename -d ~/.local/share/gnome-shell/extensions/$UUID
gnome-shell-extension-tool -e $UUID
rm $filename

# https://extensions.gnome.org/extension/570/todotxt/
URL="https://extensions.gnome.org/extension-data/todo.txt%40bart.libert.gmail.com.v25.shell-extension.zip"
wget -O temp.zip $URL
filename="temp.zip"
UUID=$(unzip -c $filename metadata.json | grep uuid | cut -d \" -f4)
mkdir -p ~/.local/share/gnome-shell/extensions/$UUID
unzip -q $filename -d ~/.local/share/gnome-shell/extensions/$UUID
gnome-shell-extension-tool -e $UUID
rm $filename

# https://extensions.gnome.org/extension/750/openweather/
URL="https://extensions.gnome.org/extension-data/openweather-extension%40jenslody.de.v97.shell-extension.zip"
wget -O temp.zip $URL
filename="temp.zip"
UUID=$(unzip -c $filename metadata.json | grep uuid | cut -d \" -f4)
mkdir -p ~/.local/share/gnome-shell/extensions/$UUID
unzip -q $filename -d ~/.local/share/gnome-shell/extensions/$UUID
gnome-shell-extension-tool -e $UUID
rm $filename

# https://extensions.gnome.org/extension/690/easyscreencast/
URL="https://extensions.gnome.org/extension-data/EasyScreenCast%40iacopodeenosee.gmail.com.v38.shell-extension.zip"
wget -O temp.zip $URL
filename="temp.zip"
UUID=$(unzip -c $filename metadata.json | grep uuid | cut -d \" -f4)
mkdir -p ~/.local/share/gnome-shell/extensions/$UUID
unzip -q $filename -d ~/.local/share/gnome-shell/extensions/$UUID
gnome-shell-extension-tool -e $UUID
rm $filename

# https://extensions.gnome.org/extension/104/netspeed/
URL="https://extensions.gnome.org/extension-data/netspeed%40hedayaty.gmail.com.v29.shell-extension.zip"
wget -O temp.zip $URL
filename="temp.zip"
UUID=$(unzip -c $filename metadata.json | grep uuid | cut -d \" -f4)
mkdir -p ~/.local/share/gnome-shell/extensions/$UUID
unzip -q $filename -d ~/.local/share/gnome-shell/extensions/$UUID
gnome-shell-extension-tool -e $UUID
rm $filename

# https://extensions.gnome.org/extension/97/coverflow-alt-tab/
URL="https://extensions.gnome.org/extension-data/CoverflowAltTab%40palatis.blogspot.com.v36.shell-extension.zip"
wget -O temp.zip $URL
filename="temp.zip"
UUID=$(unzip -c $filename metadata.json | grep uuid | cut -d \" -f4)
mkdir -p ~/.local/share/gnome-shell/extensions/$UUID
unzip -q $filename -d ~/.local/share/gnome-shell/extensions/$UUID
gnome-shell-extension-tool -e $UUID
rm $filename

# https://extensions.gnome.org/extension/1112/screenshot-tool/
URL="https://extensions.gnome.org/extension-data/gnome-shell-screenshotttll.de.v33.shell-extension.zip"
wget -O temp.zip $URL
filename="temp.zip"
UUID=$(unzip -c $filename metadata.json | grep uuid | cut -d \" -f4)
mkdir -p ~/.local/share/gnome-shell/extensions/$UUID
unzip -q $filename -d ~/.local/share/gnome-shell/extensions/$UUID
gnome-shell-extension-tool -e $UUID
rm $filename


# to uninstall just delete the extensions folder from ~/.local/share/gnome-shell/extensions/

echo -e "\e[32m !---------- Gnome Shell Extensions Installed ----------! \e[0m"
echo -e "\e[32m !---------- You must logout and log back in to see the changes ----------! \e[0m"