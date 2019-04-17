# install Configure inotify File Watcher
# this updates inotify file watcher's maximum so that things like VSCode and Angular can watch for changes and autoreload
# this fixed a bug where the Angular server required a restart to show changes after editing the source code

echo -e "\e[31m !---------- Configuring inotify File Watcher ----------! \e[0m"

echo "Current Max Watches: $(cat /proc/sys/fs/inotify/max_user_watches)" # current number 
echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf # needs root
sysctl -p # load new value, needs root

echo -e "\e[32m !---------- Configured inotify File Watcher ----------! \e[0m"


