#!/bin/bash

# request the number 5 form the user:
read -p "Enter # 5 : " number
if test $number == 5
then
    echo "Thanks for entering # 5"
fi
if test $number != 5
then
    echo "I asked for the # 5. Please try again."
fi
