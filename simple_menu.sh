#!/bin/bash
# a simple menu system using the `select' function


names="Kyle Cartman Stan Quit"

PS3='Select  character: '

select name in $names
do
    if [ $name == 'Quit' ]
    then
        break
    fi

    echo Hello $name
done

echo Bye
