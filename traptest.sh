#!/bin/bash
# traptest.sh
# This file was created on 17/10/18

trap 'printf "\nquitting\n";sleep 0.5; exit 0' 2 15

echo "pid is $$"

while (( COUNT < 100 ))
do
    sleep 1
    printf "."
    (( COUNT ++ ))
done
exit 0
