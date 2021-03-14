#!/bin/bash

# Define a list of string variable:
stringList=WordPress,Joomla,Magento


# Use comma as separator and apply as pattern:
for val in ${stringList//,/ }
do
    echo $val
done
