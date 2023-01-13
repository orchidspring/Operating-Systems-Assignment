#!/bin/bash

read -p "Please enter a file name in the /tmp directory: " filename

if [ -f /tmp/$filename ]
then
    dialog --title "File Content" \
           --msgbox "$(cat /tmp/$filename | sed -e 'N;s/\n/\n\n/')" 10 60
else
    dialog --title "Error" \
           --msgbox "The file does not exist in the /tmp directory." 10 40
fi
