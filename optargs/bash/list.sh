#!/bin/bash

# list.sh
# Purpose: a script that prints out the contents of a file with line numbering
# using 'cat -n'


# set variables:
unset var
var=$1


# the default 'usage' message function:
usage() {
    printf "\nUsage: $(basename $0) <path/to/file> - requires one parameter.\n\n"
}


# the main output function:
loop() {
    while :; do     # use of null ':'
        clear;
        cat -n $var;
        sleep 1;
    done
}


# test for correct number of parameters passed to the script:
if [ $# -eq 1 ]; then
    loop;

else
    usage
    exit 1
fi
