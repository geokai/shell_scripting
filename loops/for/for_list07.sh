#!/bin/bash

# Define the string arrays:
str_array1=("Magneto 2.2.4" "WooCommerce")
str_array2=("CodeIgnitor" "Laravel")

# Combine the two arrays:
combined=(str_array1 str_array2)


# Iterate through both arrays, nested loops:
for arrItem in ${combined[@]}
do
    eval 'for val in "${'$arrItem'[@]}";do echo "$val"; done'
done
