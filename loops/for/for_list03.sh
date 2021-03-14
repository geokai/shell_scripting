#!/bin/bash


# Declare an array of string with type:
declare -a StringArray=("Linux Mint" "Fedora" "Red Hat Linux" "Ubuntu" "Debian")

# Iterate a string array using a _for_ loop:

for val in ${StringArray[@]}
do
    echo $val
done
