#!/bin/bash
clear
# Deafult Port
def_port='8080'

# Color Codes
white=$'\e[1;0m'
red=$'\e[1;31m'
green=$'\e[1;32m'
yellow=$'\e[1;33m'
blue=$'\e[1;34m'
pink=$'\e[1;35m'
#aqua
A=$'\e[1;36m'
White=$'\e[1;37m'
#Ensure PHP is installed
if ! command -v php &> /dev/null; then
    echo "PHP is not installed. Installing now..."
    pkg install php -y
fi

# Banner
echo -e "\e[92m\e[1m  __          ________ ____ "
echo "  \ \        / /  ____|  _ |"
echo "   \ \  /\  / /| |__  | |_) |  "
echo "    \ \/  \/ / |  __| |  _ <  "
echo "     \  /\  /  | |____| |_) | "
echo "      \/  \/   |______|____/"
echo ""
echo -e "\e[91m[\e[92m1\e[91m] \e[36m Start Localhost Server"
echo -e "\e[91m[\e[92m2\e[91m] \e[36m Update Packages (pkg update)"
echo -e "\e[91m[\e[92m3\e[91m] \e[36m Developer: info"
echo -e "\e[91m[\e[92m4\e[91m] \e[36m Exit"
echo -e "\e[97m"
read -p "select : " option

if [ $option -eq "1" ];then
	printf "\n ${red}[${white}-${red}]${pink} Input Port ${white}[default:${def_port}]: ${yellow}"
	read port
	port="${port:-${def_port}}"
	printf "\n ${red}[${white}-${red}]${blue} Starting PHP Server on Port: ${yellow}${port}\n"
	php -S 127.0.0.1:"$port" > /dev/null 2>&1 &
	sleep 2
	printf "\n ${red}[${white}-${red}]${green} Suessfully Hosted link:=> ${yellow}http://localhost:$port "
	printf "\n\n ${red}[${white}-${red}]${A} Press Ctrl + C to exit. ${white}\n"
	while [ true ]; do
		sleep 0.75
	done
fi
if [ $option -eq "2" ];then
clear
pkg update && pkg upgrade
fi
if ! command -v php &> /dev/null
then
    pkg install php
    exit
fi
if ! command -v git &> /dev/null
then
    pkg install git
    exit
    
clear
fi
if [ $option -eq "3" ];then
killall php
path
clear
echo -e "\e[91m[\e[92m0\e[91m] \e[91m Stop Website...❌:"
termux-open-url https://chat.whatsapp.com/II35pNaN25rHqnUmqXK6ag
fi