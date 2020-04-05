#!/bin/bash

#  a script that adds to numbers submitted by the user upon request

usage() {
    echo
    echo "Usage: $0 operand_1 operand_2 - two integer operands must be provided"
    echo
    exit 1
}

echo "This program adds two integers."
read -p "Enter two numbers: " x y

if [ "$x" -eq "$x" ] 2>/dev/null && [ "$y" -eq "$y" ] 2>/dev/null ; then
    ans=$(( x + y ))
    echo "$x + $y = $ans"
    exit 0
else
    usage
fi
