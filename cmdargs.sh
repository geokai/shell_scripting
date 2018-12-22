#!/bin/bash

# set new field separator:
old_IFS=$IFS
IFS="/"

echo "The script name : $0"
echo "The value of the first arg : $1"
echo "The value of the second arg : $2"
echo "The value of the third arg : $3"
echo "The number of args passed to the script : $#"
echo "Temporary field separator, \$IFS = $IFS"
echo "The value of all cmd-line args (\$* version) : $*"
echo "The value of all cmd-line args (\$@ version) : $@"

# resset original field separator:
IFS=$old_IFS
