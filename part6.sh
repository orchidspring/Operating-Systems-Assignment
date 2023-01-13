#!/bin/bash

dialog --title "Backup Confirmation" \
       --yesno "Do you want to create a full backup for all the files under your home directory and save the backup file in the /tmp directory before exiting the program?" 10 40

if [ $? -eq 0 ]
then
    tar -cvf /tmp/backup.tar ~/
    dialog --title "Backup Created" \
           --msgbox "Backup created successfully in /tmp/backup.tar" 10 40
else
    dialog --title "Backup Cancelled" \
           --msgbox "Backup cancelled. Exiting the program."
