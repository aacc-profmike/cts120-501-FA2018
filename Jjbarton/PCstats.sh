#!/bin/bash
clear
#
pause=(
read -p "Press Enter key to continue.. " -n1 -s
)

# menu to display to the user
while true; do

echo " --PC Stats--"
echo
echo
echo "Please select a choice:"
echo " 1) CPU info"
echo " 2) Free disk space"
echo " 3) Available memory"
echo " 4) List Partitions"
echo " 5) Quit"

# user input
read -p ">>>" choice

case $choice in
1) clear
lscpu
$pause
clear;;
2) clear
df -h
$pause
clear;;
3) clear
cat /proc/meminfo | grep -i free
$pause
clear;;
4) clear
lsblk
$pause
clear;;
5) clear
exit;;
esac
done

