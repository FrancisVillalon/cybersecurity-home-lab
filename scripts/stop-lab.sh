#!/bin/bash

VBOX="/mnt/c/Program Files/Oracle/VirtualBox/VBoxManage.exe"

echo -e "\e[33m Shutting down Lab Environment...\e[0m"

# Shutdown endpoints first
echo -e "\e[33m Shutting down endpoints...\e[0m"
endpoints=("PC01" "WAZUH-SIEM01" "NESSUS-SCAN01" "WSUS01")
for vm in "${endpoints[@]}"; do
	"$VBOX" controlvm "$vm" acpipowerbutton 2>/dev/null
done


"$VBOX" controlvm "ATTACKER01" acpipowerbutton 2>/dev/null
"$VBOX" controlvm "DC01" acpipowerbutton 2>/dev/null
"$VBOX" controlvm "PFSENSE-FW01" acpipowerbutton 2>/dev/null
"$VBOX" controlvm "EDGE-RTR01" acpipowerbutton 2>/dev/null

echo -e "\e[32mLab shutdown complete.\e[0m"
