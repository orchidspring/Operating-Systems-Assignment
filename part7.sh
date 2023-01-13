#!/bin/bash

echo "Please select an option:"
echo "1. Print the current directory"
echo "2. Print the home directory"
echo "3. Print the user id"
echo "4. Print the hostname"
echo "5. Print the date and time"
echo "6. Print the list of files in the current directory"
echo "7. List the running processes"
echo "8. Exit the program"
read -p "Option: " option

case $option in
    1) pwd ;;
    2) echo $HOME ;;
    3) echo $UID ;;
    4) hostname ;;
    5) date ;;
    6) ls ;;
    7) ps -ef ;;
    8) exit 0 ;;
esac
