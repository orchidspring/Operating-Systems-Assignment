#!/bin/bash

current_dir=$(pwd)
home_dir=$HOME
user_id=$UID
host_name=$(hostname)
date_time=$(date)

dialog --title "Information" \
       --msgbox "Current Directory: ${current_dir}\nHome Directory: ${home_dir}\nUser ID: ${user_id}\nHost Name: ${host_name}\nDate & Time: ${date_time}" 10 40
