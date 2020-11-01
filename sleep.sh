#!/bin/bash

trap 'echo "Caught SIGUSR1"' SIGUSR1

[ -z $1 ] && { echo "Supply delay time in seconds"; exit 1; }
[[ $1 -eq $1 && $1 -gt 0 ]] 2>/dev/null || { echo "Not a valid number"; exit 1; }

echo "Sleeping for $1 seconds. Pid: $$"
while :
do
    sleep $1
    echo "Sleep over"
    exit 0
done
