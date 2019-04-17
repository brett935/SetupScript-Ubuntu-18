# install Java JDK 8
add-apt-repository ppa:webupd8team/java
apt update
apt -y install oracle-java8-installer 
# after finishing installer above
update-alternatives --config java
echo -e "\e[33m !---------- You must update your JAVA_HOME Enviroment Variable to match the selected version of Java ----------! \e[0m"
echo -e "\e[33m !---------- Enter the path that is selected above: (ex: JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64/bin/') ----------! \e[0m"
read path
echo -e "\e[32m !---------- Adding path to end of /etc/enviroment ----------! \e[0m"
echo "JAVA_HOME='${path}'" >> /etc/environment # needs root
echo -e "\e[32m !---------- The path you entered was: ${path} ----------! \e[0m"
source /etc/environment