sudo apt update
sudo apt upgrade -y
sudo apt list --upgradable | grep -v "Listing..." | cut -f1 -d"/" | xargs sudo apt-get install
sudo apt autoremove -y
clear
