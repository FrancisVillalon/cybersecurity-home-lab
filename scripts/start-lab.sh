#!/bin/bash

VBOX="/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe"

echo -e "\e[32mStarting Lab Environment...\e[0m"

"$VBOX" startvm "EDGE-RTR01" --type headless
echo -e "\e[33mStarted EDGE-RTR01...\e[0m"

"$VBOX" startvm "PFSENSE-FW01" --type headless
echo -e "\e[33mStarted PFSENSE-FW01...\e[0m"

"$VBOX" startvm "DC01" --type gui
echo -e "\e[33mStarted DC01 ...\e[0m"

"$VBOX" startvm "ATTACKER01" --type gui
echo -e "\e[33mStarted ATTACKER01...\e[0m"

echo -e "\e[32mCore infrastructure started.\e[0m"
