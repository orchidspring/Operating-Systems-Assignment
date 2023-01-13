#!/bin/bash

files=$(find ~ -maxdepth 1 -type f -perm -u=r -perm -u=x)

dialog --title "Regular Files with Read & Execute Permissions" \
       --msgbox "${files}" 10 40
