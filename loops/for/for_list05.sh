#!/bin/bash


# Declare an array of string with type:
declare -a StringArray=("PHP" "Java" "C++" "VB.Net" "Python" "Perl")

# Print array values in lines:
echo "Print each element on a new line"
for val1 in ${StringArray[*]}
do
    echo $val1
done
echo ""


# Print array values in one line:
echo "Print all elements on a single line"
for val2 in "${StringArray[*]}"
do
    echo $val2
done
echo ""
