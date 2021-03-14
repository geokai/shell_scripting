#!/bin/bash

_pid=$$
# echo $$

# set a trap:
trap 'dunstify -C 010; exit' 15 2 1

[ ${@} != 2 ] 2>/dev/null && echo "Useage: flash_msg.sh (urgency level:) <low|normal|critical> <message>" && exit 1

# printf "$$\n"
# this prints out the pid of the script running:
while true
do
    dunstify -r 010 -u $1 " " "$2"
    sleep 1
    dunstify -C 010
    sleep 1
done
