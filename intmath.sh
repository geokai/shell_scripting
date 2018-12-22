#!/bin/bash


# set x, y and z to an integer date type:
declare -i x=10
declare -i y=10
declare -i z=0

z=$(( x + y ))
echo "$x + $y = $z"


# try setting x to a character 'a':
x=a

z=$(( x + y ))
echo "$x + $y = $z"
