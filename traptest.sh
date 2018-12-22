#!/bin/bash
# traptest.sh
# This file was created on 17/10/18

echo "pid is $$"

while (( COUNT < 10 ))
do
    sleep 10
    (( COUNT ++ ))
done
exit 0
