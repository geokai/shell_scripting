#!/bin/bash


while :; do cat /sys/class/thermal/thermal_zone0/temp | sed -r 's/[0-9]{3}$/ C/'; sleep 1; done
