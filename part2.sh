#!/bin/bash

total_files=$(find ~ -maxdepth 1 -type f | wc -l)

dialog --title "Total Files in Home Directory" \
       --msgbox "Total number of regular files in your home directory (excluding files in its subdirectories): ${total_files}" 10 40
