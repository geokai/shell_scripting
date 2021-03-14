#!/bin/bash


# Declare an array of string with type:
declare -a StringArray=("Windows XP" "Windows 10" "Windows ME" "Windows 8.1" "Windows Server 2016")

# Iterate a string array using a _for_ loop:

for val in "${StringArray[@]}"
do
    echo $val
done
