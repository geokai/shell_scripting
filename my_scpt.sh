#!/bin/sh

if [ -f $1 ]
    then
        COUNT=$(wc -l $1)
    elif [ -d $1 ]
    then
        for f in $(find $1 -maxdepth 1 -type f)
        do
            wc -l $f 2> /dev/null
        done
    else
        echo "not file types or directories"
        exit 42
fi

echo $COUNT
