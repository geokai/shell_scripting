#!/bin/bash


# Preserve original field separator:
orig_ifs=$IFS

# Define a comma separated datalist:
DataList="HTML5,CCS3,BootStrap,JQuery"

# Set comma as internal field separator for the string list:
IFS=,


# Print each item on a new line:
echo "Print each element on a new line"
for val in $DataList
do
    echo $val
done

IFS=$orig_ifs
