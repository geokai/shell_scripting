#!/bin/bash


# set a trap:
trap 'dunstify -C 010; exit' 15 2 1

[ ${@} != 2 ] 2>/dev/null && echo "Useage: flash_msg.sh (urgency level:) <low|normal|critical> <message>" && exit 1

printf "$$\n"

while true
do
    dunstify -r 010 -u critical " " "The message."
    sleep 1
    dunstify -C 010
    sleep 1
done
