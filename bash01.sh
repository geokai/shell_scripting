#!/bin/bash

echo
echo $0
echo

if [ $USER = "pi" ]
    then
        echo "Hello $1!"
    else
        echo "Bye"
fi
