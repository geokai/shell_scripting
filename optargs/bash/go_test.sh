#!/bin/bash

# Purpose: a simple implementation of 'getopts' using a single option flag.


while getopts ":a" opt; do
    case $opt in
        a)
            echo "-a was triggered!" >&2
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            ;;
    esac
done
