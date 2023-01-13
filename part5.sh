#!/bin/bash

read -p "Please enter a range (Range difference must be 50. Example Enter a range: 200 250): " range

min=$(echo $range | cut -d ' ' -f1)
max=$(echo $range | cut -d ' ' -f2)

if [ $(($max - $min)) -eq 50 ]
then
    rand_nums=$(shuf -i $min-$max -n 8 | xargs)
    dialog --title "Random Numbers" \
           --msgbox "Random numbers between $range: ${rand_nums}" 10 40
else
    dialog --title "Error" \
           --msg
